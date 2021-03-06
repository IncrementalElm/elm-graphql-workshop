-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.LicenseRule exposing (description, key, label)

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


{-| A description of the rule
-}
description : SelectionSet String ElmGithub.Object.LicenseRule
description =
    Object.selectionForField "String" "description" [] Decode.string


{-| The machine-readable rule key
-}
key : SelectionSet String ElmGithub.Object.LicenseRule
key =
    Object.selectionForField "String" "key" [] Decode.string


{-| The human-readable rule label
-}
label : SelectionSet String ElmGithub.Object.LicenseRule
label =
    Object.selectionForField "String" "label" [] Decode.string
