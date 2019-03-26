-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Interface.Comment exposing (Fragments, UserContentEditsOptionalArguments, author, authorAssociation, body, bodyHTML, bodyText, createdAt, createdViaEmail, editor, fragments, id, includesCreatedEdit, lastEditedAt, maybeFragments, publishedAt, updatedAt, userContentEdits, viewerDidAuthor)

import ElmGithub.Enum.CommentAuthorAssociation
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
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


type alias Fragments decodesTo =
    { onIssue : SelectionSet decodesTo ElmGithub.Object.Issue
    , onCommitComment : SelectionSet decodesTo ElmGithub.Object.CommitComment
    , onPullRequest : SelectionSet decodesTo ElmGithub.Object.PullRequest
    , onIssueComment : SelectionSet decodesTo ElmGithub.Object.IssueComment
    , onPullRequestReviewComment : SelectionSet decodesTo ElmGithub.Object.PullRequestReviewComment
    , onPullRequestReview : SelectionSet decodesTo ElmGithub.Object.PullRequestReview
    , onGistComment : SelectionSet decodesTo ElmGithub.Object.GistComment
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo ElmGithub.Interface.Comment
fragments selections =
    Object.exhuastiveFragmentSelection
        [ Object.buildFragment "Issue" selections.onIssue
        , Object.buildFragment "CommitComment" selections.onCommitComment
        , Object.buildFragment "PullRequest" selections.onPullRequest
        , Object.buildFragment "IssueComment" selections.onIssueComment
        , Object.buildFragment "PullRequestReviewComment" selections.onPullRequestReviewComment
        , Object.buildFragment "PullRequestReview" selections.onPullRequestReview
        , Object.buildFragment "GistComment" selections.onGistComment
        ]


{-| Can be used to create a non-exhuastive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onIssue = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onCommitComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequest = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onIssueComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequestReviewComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequestReview = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onGistComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


{-| The actor who authored the comment.
-}
author : SelectionSet decodesTo ElmGithub.Interface.Actor -> SelectionSet (Maybe decodesTo) ElmGithub.Interface.Comment
author object_ =
    Object.selectionForCompositeField "author" [] object_ (identity >> Decode.nullable)


{-| Author's association with the subject of the comment.
-}
authorAssociation : SelectionSet ElmGithub.Enum.CommentAuthorAssociation.CommentAuthorAssociation ElmGithub.Interface.Comment
authorAssociation =
    Object.selectionForField "Enum.CommentAuthorAssociation.CommentAuthorAssociation" "authorAssociation" [] ElmGithub.Enum.CommentAuthorAssociation.decoder


{-| The body as Markdown.
-}
body : SelectionSet String ElmGithub.Interface.Comment
body =
    Object.selectionForField "String" "body" [] Decode.string


{-| The body rendered to HTML.
-}
bodyHTML : SelectionSet ElmGithub.ScalarCodecs.Html ElmGithub.Interface.Comment
bodyHTML =
    Object.selectionForField "ScalarCodecs.Html" "bodyHTML" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| The body rendered to text.
-}
bodyText : SelectionSet String ElmGithub.Interface.Comment
bodyText =
    Object.selectionForField "String" "bodyText" [] Decode.string


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet ElmGithub.ScalarCodecs.DateTime ElmGithub.Interface.Comment
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Check if this comment was created via an email reply.
-}
createdViaEmail : SelectionSet Bool ElmGithub.Interface.Comment
createdViaEmail =
    Object.selectionForField "Bool" "createdViaEmail" [] Decode.bool


{-| The actor who edited the comment.
-}
editor : SelectionSet decodesTo ElmGithub.Interface.Actor -> SelectionSet (Maybe decodesTo) ElmGithub.Interface.Comment
editor object_ =
    Object.selectionForCompositeField "editor" [] object_ (identity >> Decode.nullable)


{-| -}
id : SelectionSet ElmGithub.ScalarCodecs.Id ElmGithub.Interface.Comment
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Check if this comment was edited and includes an edit with the creation data
-}
includesCreatedEdit : SelectionSet Bool ElmGithub.Interface.Comment
includesCreatedEdit =
    Object.selectionForField "Bool" "includesCreatedEdit" [] Decode.bool


{-| The moment the editor made the last edit
-}
lastEditedAt : SelectionSet (Maybe ElmGithub.ScalarCodecs.DateTime) ElmGithub.Interface.Comment
lastEditedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "lastEditedAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| Identifies when the comment was published at.
-}
publishedAt : SelectionSet (Maybe ElmGithub.ScalarCodecs.DateTime) ElmGithub.Interface.Comment
publishedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "publishedAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet ElmGithub.ScalarCodecs.DateTime ElmGithub.Interface.Comment
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


type alias UserContentEditsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of edits to this content.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
userContentEdits : (UserContentEditsOptionalArguments -> UserContentEditsOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.UserContentEditConnection -> SelectionSet (Maybe decodesTo) ElmGithub.Interface.Comment
userContentEdits fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "userContentEdits" optionalArgs object_ (identity >> Decode.nullable)


{-| Did the viewer author this comment.
-}
viewerDidAuthor : SelectionSet Bool ElmGithub.Interface.Comment
viewerDidAuthor =
    Object.selectionForField "Bool" "viewerDidAuthor" [] Decode.bool
