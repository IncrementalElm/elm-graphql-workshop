-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmStuff.Query exposing (FindPackageRequiredArguments, PackagesByAuthorRequiredArguments, allPackages, authors, elmOrganization, favoritePackages, findPackage, packagesByAuthor, randomQuote, talks)

import ElmStuff.InputObject
import ElmStuff.Interface
import ElmStuff.Object
import ElmStuff.Scalar
import ElmStuff.ScalarDecoders
import ElmStuff.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)


{-| -}
allPackages : SelectionSet decodesTo ElmStuff.Object.Package -> SelectionSet (List decodesTo) RootQuery
allPackages object_ =
    Object.selectionForCompositeField "allPackages" [] object_ (identity >> Decode.list)


type alias PackagesByAuthorRequiredArguments =
    { author : String }


{-|

  - author -

-}
packagesByAuthor : PackagesByAuthorRequiredArguments -> SelectionSet decodesTo ElmStuff.Object.Package -> SelectionSet (List decodesTo) RootQuery
packagesByAuthor requiredArgs object_ =
    Object.selectionForCompositeField "packagesByAuthor" [ Argument.required "author" requiredArgs.author Encode.string ] object_ (identity >> Decode.list)


type alias FindPackageRequiredArguments =
    { author : String
    , name : String
    }


{-|

  - author -
  - name -

-}
findPackage : FindPackageRequiredArguments -> SelectionSet decodesTo ElmStuff.Object.Package -> SelectionSet (Maybe decodesTo) RootQuery
findPackage requiredArgs object_ =
    Object.selectionForCompositeField "findPackage" [ Argument.required "author" requiredArgs.author Encode.string, Argument.required "name" requiredArgs.name Encode.string ] object_ (identity >> Decode.nullable)


{-| -}
randomQuote : SelectionSet String RootQuery
randomQuote =
    Object.selectionForField "String" "randomQuote" [] Decode.string


{-| -}
talks : SelectionSet decodesTo ElmStuff.Object.Talk -> SelectionSet (List decodesTo) RootQuery
talks object_ =
    Object.selectionForCompositeField "talks" [] object_ (identity >> Decode.list)


{-| -}
elmOrganization : SelectionSet decodesTo ElmStuff.Object.Author -> SelectionSet decodesTo RootQuery
elmOrganization object_ =
    Object.selectionForCompositeField "elmOrganization" [] object_ identity


{-| -}
authors : SelectionSet decodesTo ElmStuff.Object.KnownAuthors -> SelectionSet decodesTo RootQuery
authors object_ =
    Object.selectionForCompositeField "authors" [] object_ identity


{-| -}
favoritePackages : SelectionSet decodesTo ElmStuff.Object.Package -> SelectionSet (List decodesTo) RootQuery
favoritePackages object_ =
    Object.selectionForCompositeField "favoritePackages" [] object_ (identity >> Decode.list)
