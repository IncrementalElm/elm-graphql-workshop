-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.PullRequestChangedFile exposing (additions, deletions, path)

import ElmGithub.InputObject
import ElmGithub.Interface
import ElmGithub.Object
import ElmGithub.Scalar
import ElmGithub.ScalarCodecs
import ElmGithub.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| The number of additions to the file.
-}
additions : SelectionSet Int ElmGithub.Object.PullRequestChangedFile
additions =
    Object.selectionForField "Int" "additions" [] Decode.int


{-| The number of deletions to the file.
-}
deletions : SelectionSet Int ElmGithub.Object.PullRequestChangedFile
deletions =
    Object.selectionForField "Int" "deletions" [] Decode.int


{-| The path of the file.
-}
path : SelectionSet String ElmGithub.Object.PullRequestChangedFile
path =
    Object.selectionForField "String" "path" [] Decode.string
