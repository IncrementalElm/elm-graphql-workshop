-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Query exposing (FindPackageRequiredArguments, FindPackagesByNameRequiredArguments, PackagesByAuthorRequiredArguments, RepositoryRequiredArguments, allPackages, favoritePackages, findPackage, findPackagesByName, packagesByAuthor, repository)

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
import Json.Decode as Decode exposing (Decoder)


type alias RepositoryRequiredArguments =
    { owner : String
    , name : String
    }


{-| Lookup a given repository by the owner and repository name.

  - owner - The login field of a user or organization
  - name - The name of the repository

-}
repository : RepositoryRequiredArguments -> SelectionSet decodesTo ElmGithub.Object.Repository -> SelectionSet (Maybe decodesTo) RootQuery
repository requiredArgs object_ =
    Object.selectionForCompositeField "repository" [ Argument.required "owner" requiredArgs.owner Encode.string, Argument.required "name" requiredArgs.name Encode.string ] object_ (identity >> Decode.nullable)


allPackages : SelectionSet decodesTo ElmGithub.Object.Package -> SelectionSet (List decodesTo) RootQuery
allPackages object_ =
    Object.selectionForCompositeField "allPackages" [] object_ (identity >> Decode.list)


type alias PackagesByAuthorRequiredArguments =
    { author : String }


packagesByAuthor : PackagesByAuthorRequiredArguments -> SelectionSet decodesTo ElmGithub.Object.Package -> SelectionSet (List decodesTo) RootQuery
packagesByAuthor requiredArgs object_ =
    Object.selectionForCompositeField "packagesByAuthor" [ Argument.required "author" requiredArgs.author Encode.string ] object_ (identity >> Decode.list)


type alias FindPackageRequiredArguments =
    { author : String
    , name : String
    }


findPackage : FindPackageRequiredArguments -> SelectionSet decodesTo ElmGithub.Object.Package -> SelectionSet (Maybe decodesTo) RootQuery
findPackage requiredArgs object_ =
    Object.selectionForCompositeField "findPackage" [ Argument.required "author" requiredArgs.author Encode.string, Argument.required "name" requiredArgs.name Encode.string ] object_ (identity >> Decode.nullable)


type alias FindPackagesByNameRequiredArguments =
    { name : String }


findPackagesByName : FindPackagesByNameRequiredArguments -> SelectionSet decodesTo ElmGithub.Object.Package -> SelectionSet (List decodesTo) RootQuery
findPackagesByName requiredArgs object_ =
    Object.selectionForCompositeField "findPackagesByName" [ Argument.required "name" requiredArgs.name Encode.string ] object_ (identity >> Decode.list)


favoritePackages : SelectionSet decodesTo ElmGithub.Object.Package -> SelectionSet (List decodesTo) RootQuery
favoritePackages object_ =
    Object.selectionForCompositeField "favoritePackages" [] object_ (identity >> Decode.list)
