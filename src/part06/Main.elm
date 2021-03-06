module Main exposing (main)

import Browser
import Graphql.Document as Document
import Graphql.Http
import Graphql.Operation exposing (RootQuery)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet as SelectionSet exposing (SelectionSet, hardcoded, with)
import Helpers.Main
import RemoteData exposing (RemoteData)
import Time
import Weather.Object.CurrentWeather as CurrentWeather
import Weather.Query as Query


type alias Response =
    CurrentWeather


query : SelectionSet Response RootQuery
query =
    Query.currentWeather weatherSelection


type alias CurrentWeather =
    { temperature : Float
    , city : String
    , country : String
    , lat : Float
    , lon : Float
    }


weatherSelection =
    SelectionSet.map5 CurrentWeather
        CurrentWeather.temperature
        CurrentWeather.city
        CurrentWeather.country
        CurrentWeather.lat
        CurrentWeather.lon


makeRequest : Cmd Msg
makeRequest =
    query
        |> Graphql.Http.queryRequest "/api"
        |> Graphql.Http.send (RemoteData.fromResult >> GotResponse)



-- Elm Architecture Setup


type Msg
    = GotResponse Model


type alias Model =
    RemoteData (Graphql.Http.Error Response) Response


type alias Flags =
    ()


init : Flags -> ( Model, Cmd Msg )
init _ =
    ( RemoteData.Loading, makeRequest )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GotResponse response ->
            ( response, Cmd.none )


main : Helpers.Main.Program Flags Model Msg
main =
    Helpers.Main.document
        { init = init
        , update = update
        , queryString = Document.serializeQuery query
        , instructions =
            { title = "Pipelines"
            , body = """Often when working with GraphQL requests in Elm, you want to add a new field to your request. There are two different methods for adding new fields. Let's practice them both.


| Header
    Method 1: Map<n + 1>


| List
    -> Pick a new field to add to the {Code|currentWeather} selection. Change the {Code|CurrentWeather} alias first. Look up the type of the field you're going to add and use that information to change the record alias.
    -> Add one more piece of data from the {Code|currentWeather} to your request by turning {Code|map5} into a {Code|map6}.
    (?) How was the experience of finding the field's type? What other ways could you look it up?


| Header
    Method 2: Pipelines

Let's compare the map<n> syntax to the pipeline syntax. The pipeline syntax
starts off with a constructor that takes {Code|n} arguments, followed by
{Code|n} fields adding using {Code|\\|> with }.

| Monospace
    SelectionSet.succeed CurrentWeather
        |> with CurrentWeather.temperature
        -- ...


| List
    -> Copy the {Code|map6} you just wrote into a new top-level value called {Code|weatherSelectionPipeline}. Then convert it into pipeline syntax.
    -> Choose another field and add it to both {Code|weatherSelection} and {Code|weatherSelectionPipeline}.
    (?) How does adding to the two versions compare?


| Header
    Error Messages

| List
    -> Cause an error in both the original and the duplicate by changing the types within your {Code|CurrentWeather} type alias definition. Try changing {Code|temperature: Float} to {Code|temperature: String}.
    (?) How do the messages themselves differ?
"""
            }
        }
