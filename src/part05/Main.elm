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
import Weather.Object.CurrentWeather
import Weather.Object.CurrentWeatherResponse
import Weather.Query as Query


type alias Response =
    String


query : SelectionSet Response RootQuery
query =
    SelectionSet.map2 difference
        (weatherFor "Santa Barbara")
        (weatherFor "Oslo")


hottestDayInCelsius =
    237.38


difference city1 city2 =
    "It is "
        ++ String.fromFloat (hottestDayInCelsius - city1)
        ++ "° (celsius) colder than the hottest recorded temperature"


weatherFor cityName =
    Query.currentWeather identity
        (Weather.Object.CurrentWeather.byCityName
            identity
            { name = cityName }
            Weather.Object.CurrentWeatherResponse.temp
        )


makeRequest : Cmd Msg
makeRequest =
    query
        |> Graphql.Http.queryRequest "http://localhost:4000/"
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
            { title = "Making The First Query"
            , body = """Look at the query in the query explorer. This is what an "empty" query looks like. You could make this query anywhere, in any schema, and you would get the same thing.


| List
    -> What happens if you delete {Code|__typename} in the GraphQL query pane?
    (?) How is the data returned different in the {Code|elm-graphql} response and the {Code|gql} response? Why?



<>
Let's turn this {Code|empty} query into something a bit more interesting!
<>

| List
    (?) There is exactly one top-level value you can get without doing any nested selection sets. Which is it? Why do you need to nest selection sets for some, but not for this one? Hint: try exploring the {Code|< Docs} pane. Confirm your answer by making the query in the Graphiql editor above and checking that it is valid without a nested Selection Set.
    (?) What do you expect to be the return type in your Elm code when you fetch this? Why?
    -> Now, modify {Code|Main.elm} to fetch the field described above. *Note:* the solution doesn't involve importing any new modules."""
            }
        }