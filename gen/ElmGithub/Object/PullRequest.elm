-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.PullRequest exposing (AssigneesOptionalArguments, CommentsOptionalArguments, CommitsOptionalArguments, FilesOptionalArguments, LabelsOptionalArguments, ParticipantsOptionalArguments, ProjectCardsOptionalArguments, ReactionsOptionalArguments, ReviewRequestsOptionalArguments, ReviewThreadsOptionalArguments, ReviewsOptionalArguments, TimelineOptionalArguments, UserContentEditsOptionalArguments, activeLockReason, additions, assignees, author, authorAssociation, baseRef, baseRefName, baseRefOid, baseRepository, body, bodyHTML, bodyText, changedFiles, closed, closedAt, comments, commits, createdAt, createdViaEmail, databaseId, deletions, editor, files, headRef, headRefName, headRefOid, headRepository, headRepositoryOwner, id, includesCreatedEdit, isCrossRepository, labels, lastEditedAt, locked, maintainerCanModify, mergeCommit, mergeable, merged, mergedAt, mergedBy, milestone, number, participants, permalink, potentialMergeCommit, projectCards, publishedAt, reactionGroups, reactions, repository, resourcePath, revertResourcePath, revertUrl, reviewRequests, reviewThreads, reviews, state, suggestedReviewers, timeline, title, updatedAt, url, userContentEdits, viewerCanApplySuggestion, viewerCanReact, viewerCanSubscribe, viewerCanUpdate, viewerCannotUpdateReasons, viewerDidAuthor, viewerSubscription)

import ElmGithub.Enum.CommentAuthorAssociation
import ElmGithub.Enum.CommentCannotUpdateReason
import ElmGithub.Enum.LockReason
import ElmGithub.Enum.MergeableState
import ElmGithub.Enum.ProjectCardArchivedState
import ElmGithub.Enum.PullRequestReviewState
import ElmGithub.Enum.PullRequestState
import ElmGithub.Enum.ReactionContent
import ElmGithub.Enum.SubscriptionState
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


{-| Reason that the conversation was locked.
-}
activeLockReason : SelectionSet (Maybe ElmGithub.Enum.LockReason.LockReason) ElmGithub.Object.PullRequest
activeLockReason =
    Object.selectionForField "(Maybe Enum.LockReason.LockReason)" "activeLockReason" [] (ElmGithub.Enum.LockReason.decoder |> Decode.nullable)


{-| The number of additions in this pull request.
-}
additions : SelectionSet Int ElmGithub.Object.PullRequest
additions =
    Object.selectionForField "Int" "additions" [] Decode.int


type alias AssigneesOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of Users assigned to this object.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
assignees : (AssigneesOptionalArguments -> AssigneesOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.UserConnection -> SelectionSet decodesTo ElmGithub.Object.PullRequest
assignees fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "assignees" optionalArgs object_ identity


{-| The actor who authored the comment.
-}
author : SelectionSet decodesTo ElmGithub.Interface.Actor -> SelectionSet (Maybe decodesTo) ElmGithub.Object.PullRequest
author object_ =
    Object.selectionForCompositeField "author" [] object_ (identity >> Decode.nullable)


{-| Author's association with the subject of the comment.
-}
authorAssociation : SelectionSet ElmGithub.Enum.CommentAuthorAssociation.CommentAuthorAssociation ElmGithub.Object.PullRequest
authorAssociation =
    Object.selectionForField "Enum.CommentAuthorAssociation.CommentAuthorAssociation" "authorAssociation" [] ElmGithub.Enum.CommentAuthorAssociation.decoder


{-| Identifies the base Ref associated with the pull request.
-}
baseRef : SelectionSet decodesTo ElmGithub.Object.Ref -> SelectionSet (Maybe decodesTo) ElmGithub.Object.PullRequest
baseRef object_ =
    Object.selectionForCompositeField "baseRef" [] object_ (identity >> Decode.nullable)


{-| Identifies the name of the base Ref associated with the pull request, even if the ref has been deleted.
-}
baseRefName : SelectionSet String ElmGithub.Object.PullRequest
baseRefName =
    Object.selectionForField "String" "baseRefName" [] Decode.string


{-| Identifies the oid of the base ref associated with the pull request, even if the ref has been deleted.
-}
baseRefOid : SelectionSet ElmGithub.ScalarCodecs.GitObjectID ElmGithub.Object.PullRequest
baseRefOid =
    Object.selectionForField "ScalarCodecs.GitObjectID" "baseRefOid" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecGitObjectID |> .decoder)


{-| The repository associated with this pull request's base Ref.
-}
baseRepository : SelectionSet decodesTo ElmGithub.Object.Repository -> SelectionSet (Maybe decodesTo) ElmGithub.Object.PullRequest
baseRepository object_ =
    Object.selectionForCompositeField "baseRepository" [] object_ (identity >> Decode.nullable)


{-| The body as Markdown.
-}
body : SelectionSet String ElmGithub.Object.PullRequest
body =
    Object.selectionForField "String" "body" [] Decode.string


{-| The body rendered to HTML.
-}
bodyHTML : SelectionSet ElmGithub.ScalarCodecs.Html ElmGithub.Object.PullRequest
bodyHTML =
    Object.selectionForField "ScalarCodecs.Html" "bodyHTML" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| The body rendered to text.
-}
bodyText : SelectionSet String ElmGithub.Object.PullRequest
bodyText =
    Object.selectionForField "String" "bodyText" [] Decode.string


{-| The number of changed files in this pull request.
-}
changedFiles : SelectionSet Int ElmGithub.Object.PullRequest
changedFiles =
    Object.selectionForField "Int" "changedFiles" [] Decode.int


{-| `true` if the pull request is closed
-}
closed : SelectionSet Bool ElmGithub.Object.PullRequest
closed =
    Object.selectionForField "Bool" "closed" [] Decode.bool


{-| Identifies the date and time when the object was closed.
-}
closedAt : SelectionSet (Maybe ElmGithub.ScalarCodecs.DateTime) ElmGithub.Object.PullRequest
closedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "closedAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


type alias CommentsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of comments associated with the pull request.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
comments : (CommentsOptionalArguments -> CommentsOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.IssueCommentConnection -> SelectionSet decodesTo ElmGithub.Object.PullRequest
comments fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "comments" optionalArgs object_ identity


type alias CommitsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of commits present in this pull request's head branch not present in the base branch.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
commits : (CommitsOptionalArguments -> CommitsOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.PullRequestCommitConnection -> SelectionSet decodesTo ElmGithub.Object.PullRequest
commits fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "commits" optionalArgs object_ identity


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet ElmGithub.ScalarCodecs.DateTime ElmGithub.Object.PullRequest
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Check if this comment was created via an email reply.
-}
createdViaEmail : SelectionSet Bool ElmGithub.Object.PullRequest
createdViaEmail =
    Object.selectionForField "Bool" "createdViaEmail" [] Decode.bool


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) ElmGithub.Object.PullRequest
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


{-| The number of deletions in this pull request.
-}
deletions : SelectionSet Int ElmGithub.Object.PullRequest
deletions =
    Object.selectionForField "Int" "deletions" [] Decode.int


{-| The actor who edited this pull request's body.
-}
editor : SelectionSet decodesTo ElmGithub.Interface.Actor -> SelectionSet (Maybe decodesTo) ElmGithub.Object.PullRequest
editor object_ =
    Object.selectionForCompositeField "editor" [] object_ (identity >> Decode.nullable)


type alias FilesOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| Lists the files changed within this pull request.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
files : (FilesOptionalArguments -> FilesOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.PullRequestChangedFileConnection -> SelectionSet (Maybe decodesTo) ElmGithub.Object.PullRequest
files fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "files" optionalArgs object_ (identity >> Decode.nullable)


{-| Identifies the head Ref associated with the pull request.
-}
headRef : SelectionSet decodesTo ElmGithub.Object.Ref -> SelectionSet (Maybe decodesTo) ElmGithub.Object.PullRequest
headRef object_ =
    Object.selectionForCompositeField "headRef" [] object_ (identity >> Decode.nullable)


{-| Identifies the name of the head Ref associated with the pull request, even if the ref has been deleted.
-}
headRefName : SelectionSet String ElmGithub.Object.PullRequest
headRefName =
    Object.selectionForField "String" "headRefName" [] Decode.string


{-| Identifies the oid of the head ref associated with the pull request, even if the ref has been deleted.
-}
headRefOid : SelectionSet ElmGithub.ScalarCodecs.GitObjectID ElmGithub.Object.PullRequest
headRefOid =
    Object.selectionForField "ScalarCodecs.GitObjectID" "headRefOid" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecGitObjectID |> .decoder)


{-| The repository associated with this pull request's head Ref.
-}
headRepository : SelectionSet decodesTo ElmGithub.Object.Repository -> SelectionSet (Maybe decodesTo) ElmGithub.Object.PullRequest
headRepository object_ =
    Object.selectionForCompositeField "headRepository" [] object_ (identity >> Decode.nullable)


{-| The owner of the repository associated with this pull request's head Ref.
-}
headRepositoryOwner : SelectionSet decodesTo ElmGithub.Interface.RepositoryOwner -> SelectionSet (Maybe decodesTo) ElmGithub.Object.PullRequest
headRepositoryOwner object_ =
    Object.selectionForCompositeField "headRepositoryOwner" [] object_ (identity >> Decode.nullable)


{-| -}
id : SelectionSet ElmGithub.ScalarCodecs.Id ElmGithub.Object.PullRequest
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Check if this comment was edited and includes an edit with the creation data
-}
includesCreatedEdit : SelectionSet Bool ElmGithub.Object.PullRequest
includesCreatedEdit =
    Object.selectionForField "Bool" "includesCreatedEdit" [] Decode.bool


{-| The head and base repositories are different.
-}
isCrossRepository : SelectionSet Bool ElmGithub.Object.PullRequest
isCrossRepository =
    Object.selectionForField "Bool" "isCrossRepository" [] Decode.bool


type alias LabelsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of labels associated with the object.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
labels : (LabelsOptionalArguments -> LabelsOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.LabelConnection -> SelectionSet (Maybe decodesTo) ElmGithub.Object.PullRequest
labels fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "labels" optionalArgs object_ (identity >> Decode.nullable)


{-| The moment the editor made the last edit
-}
lastEditedAt : SelectionSet (Maybe ElmGithub.ScalarCodecs.DateTime) ElmGithub.Object.PullRequest
lastEditedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "lastEditedAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| `true` if the pull request is locked
-}
locked : SelectionSet Bool ElmGithub.Object.PullRequest
locked =
    Object.selectionForField "Bool" "locked" [] Decode.bool


{-| Indicates whether maintainers can modify the pull request.
-}
maintainerCanModify : SelectionSet Bool ElmGithub.Object.PullRequest
maintainerCanModify =
    Object.selectionForField "Bool" "maintainerCanModify" [] Decode.bool


{-| The commit that was created when this pull request was merged.
-}
mergeCommit : SelectionSet decodesTo ElmGithub.Object.Commit -> SelectionSet (Maybe decodesTo) ElmGithub.Object.PullRequest
mergeCommit object_ =
    Object.selectionForCompositeField "mergeCommit" [] object_ (identity >> Decode.nullable)


{-| Whether or not the pull request can be merged based on the existence of merge conflicts.
-}
mergeable : SelectionSet ElmGithub.Enum.MergeableState.MergeableState ElmGithub.Object.PullRequest
mergeable =
    Object.selectionForField "Enum.MergeableState.MergeableState" "mergeable" [] ElmGithub.Enum.MergeableState.decoder


{-| Whether or not the pull request was merged.
-}
merged : SelectionSet Bool ElmGithub.Object.PullRequest
merged =
    Object.selectionForField "Bool" "merged" [] Decode.bool


{-| The date and time that the pull request was merged.
-}
mergedAt : SelectionSet (Maybe ElmGithub.ScalarCodecs.DateTime) ElmGithub.Object.PullRequest
mergedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "mergedAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| The actor who merged the pull request.
-}
mergedBy : SelectionSet decodesTo ElmGithub.Interface.Actor -> SelectionSet (Maybe decodesTo) ElmGithub.Object.PullRequest
mergedBy object_ =
    Object.selectionForCompositeField "mergedBy" [] object_ (identity >> Decode.nullable)


{-| Identifies the milestone associated with the pull request.
-}
milestone : SelectionSet decodesTo ElmGithub.Object.Milestone -> SelectionSet (Maybe decodesTo) ElmGithub.Object.PullRequest
milestone object_ =
    Object.selectionForCompositeField "milestone" [] object_ (identity >> Decode.nullable)


{-| Identifies the pull request number.
-}
number : SelectionSet Int ElmGithub.Object.PullRequest
number =
    Object.selectionForField "Int" "number" [] Decode.int


type alias ParticipantsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of Users that are participating in the Pull Request conversation.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
participants : (ParticipantsOptionalArguments -> ParticipantsOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.UserConnection -> SelectionSet decodesTo ElmGithub.Object.PullRequest
participants fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "participants" optionalArgs object_ identity


{-| The permalink to the pull request.
-}
permalink : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.PullRequest
permalink =
    Object.selectionForField "ScalarCodecs.Uri" "permalink" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The commit that GitHub automatically generated to test if this pull request
could be merged. This field will not return a value if the pull request is
merged, or if the test merge commit is still being generated. See the
`mergeable` field for more details on the mergeability of the pull request.
-}
potentialMergeCommit : SelectionSet decodesTo ElmGithub.Object.Commit -> SelectionSet (Maybe decodesTo) ElmGithub.Object.PullRequest
potentialMergeCommit object_ =
    Object.selectionForCompositeField "potentialMergeCommit" [] object_ (identity >> Decode.nullable)


type alias ProjectCardsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , archivedStates : OptionalArgument (List (Maybe ElmGithub.Enum.ProjectCardArchivedState.ProjectCardArchivedState))
    }


{-| List of project cards associated with this pull request.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - archivedStates - A list of archived states to filter the cards by

-}
projectCards : (ProjectCardsOptionalArguments -> ProjectCardsOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.ProjectCardConnection -> SelectionSet decodesTo ElmGithub.Object.PullRequest
projectCards fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, archivedStates = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "archivedStates" filledInOptionals.archivedStates (Encode.enum ElmGithub.Enum.ProjectCardArchivedState.toString |> Encode.maybe |> Encode.list) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "projectCards" optionalArgs object_ identity


{-| Identifies when the comment was published at.
-}
publishedAt : SelectionSet (Maybe ElmGithub.ScalarCodecs.DateTime) ElmGithub.Object.PullRequest
publishedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "publishedAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| A list of reactions grouped by content left on the subject.
-}
reactionGroups : SelectionSet decodesTo ElmGithub.Object.ReactionGroup -> SelectionSet (Maybe (List decodesTo)) ElmGithub.Object.PullRequest
reactionGroups object_ =
    Object.selectionForCompositeField "reactionGroups" [] object_ (identity >> Decode.list >> Decode.nullable)


type alias ReactionsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , content : OptionalArgument ElmGithub.Enum.ReactionContent.ReactionContent
    , orderBy : OptionalArgument ElmGithub.InputObject.ReactionOrder
    }


{-| A list of Reactions left on the Issue.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - content - Allows filtering Reactions by emoji.
  - orderBy - Allows specifying the order in which reactions are returned.

-}
reactions : (ReactionsOptionalArguments -> ReactionsOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.ReactionConnection -> SelectionSet decodesTo ElmGithub.Object.PullRequest
reactions fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, content = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "content" filledInOptionals.content (Encode.enum ElmGithub.Enum.ReactionContent.toString), Argument.optional "orderBy" filledInOptionals.orderBy ElmGithub.InputObject.encodeReactionOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "reactions" optionalArgs object_ identity


{-| The repository associated with this node.
-}
repository : SelectionSet decodesTo ElmGithub.Object.Repository -> SelectionSet decodesTo ElmGithub.Object.PullRequest
repository object_ =
    Object.selectionForCompositeField "repository" [] object_ identity


{-| The HTTP path for this pull request.
-}
resourcePath : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.PullRequest
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP path for reverting this pull request.
-}
revertResourcePath : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.PullRequest
revertResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "revertResourcePath" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for reverting this pull request.
-}
revertUrl : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.PullRequest
revertUrl =
    Object.selectionForField "ScalarCodecs.Uri" "revertUrl" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


type alias ReviewRequestsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of review requests associated with the pull request.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
reviewRequests : (ReviewRequestsOptionalArguments -> ReviewRequestsOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.ReviewRequestConnection -> SelectionSet (Maybe decodesTo) ElmGithub.Object.PullRequest
reviewRequests fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "reviewRequests" optionalArgs object_ (identity >> Decode.nullable)


type alias ReviewThreadsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| The list of all review threads for this pull request.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
reviewThreads : (ReviewThreadsOptionalArguments -> ReviewThreadsOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.PullRequestReviewThreadConnection -> SelectionSet decodesTo ElmGithub.Object.PullRequest
reviewThreads fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "reviewThreads" optionalArgs object_ identity


type alias ReviewsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , states : OptionalArgument (List ElmGithub.Enum.PullRequestReviewState.PullRequestReviewState)
    , author : OptionalArgument String
    }


{-| A list of reviews associated with the pull request.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - states - A list of states to filter the reviews.
  - author - Filter by author of the review.

-}
reviews : (ReviewsOptionalArguments -> ReviewsOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.PullRequestReviewConnection -> SelectionSet (Maybe decodesTo) ElmGithub.Object.PullRequest
reviews fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, states = Absent, author = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "states" filledInOptionals.states (Encode.enum ElmGithub.Enum.PullRequestReviewState.toString |> Encode.list), Argument.optional "author" filledInOptionals.author Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "reviews" optionalArgs object_ (identity >> Decode.nullable)


{-| Identifies the state of the pull request.
-}
state : SelectionSet ElmGithub.Enum.PullRequestState.PullRequestState ElmGithub.Object.PullRequest
state =
    Object.selectionForField "Enum.PullRequestState.PullRequestState" "state" [] ElmGithub.Enum.PullRequestState.decoder


{-| A list of reviewer suggestions based on commit history and past review comments.
-}
suggestedReviewers : SelectionSet decodesTo ElmGithub.Object.SuggestedReviewer -> SelectionSet (List (Maybe decodesTo)) ElmGithub.Object.PullRequest
suggestedReviewers object_ =
    Object.selectionForCompositeField "suggestedReviewers" [] object_ (identity >> Decode.nullable >> Decode.list)


type alias TimelineOptionalArguments =
    { since : OptionalArgument ElmGithub.ScalarCodecs.DateTime
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of events, comments, commits, etc. associated with the pull request.

  - since - Allows filtering timeline events by a `since` timestamp.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
timeline : (TimelineOptionalArguments -> TimelineOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.PullRequestTimelineConnection -> SelectionSet decodesTo ElmGithub.Object.PullRequest
timeline fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { since = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "since" filledInOptionals.since (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapEncoder .codecDateTime), Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "timeline" optionalArgs object_ identity


{-| Identifies the pull request title.
-}
title : SelectionSet String ElmGithub.Object.PullRequest
title =
    Object.selectionForField "String" "title" [] Decode.string


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet ElmGithub.ScalarCodecs.DateTime ElmGithub.Object.PullRequest
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The HTTP URL for this pull request.
-}
url : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.PullRequest
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


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
userContentEdits : (UserContentEditsOptionalArguments -> UserContentEditsOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.UserContentEditConnection -> SelectionSet (Maybe decodesTo) ElmGithub.Object.PullRequest
userContentEdits fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "userContentEdits" optionalArgs object_ (identity >> Decode.nullable)


{-| Whether or not the viewer can apply suggestion.
-}
viewerCanApplySuggestion : SelectionSet Bool ElmGithub.Object.PullRequest
viewerCanApplySuggestion =
    Object.selectionForField "Bool" "viewerCanApplySuggestion" [] Decode.bool


{-| Can user react to this subject
-}
viewerCanReact : SelectionSet Bool ElmGithub.Object.PullRequest
viewerCanReact =
    Object.selectionForField "Bool" "viewerCanReact" [] Decode.bool


{-| Check if the viewer is able to change their subscription status for the repository.
-}
viewerCanSubscribe : SelectionSet Bool ElmGithub.Object.PullRequest
viewerCanSubscribe =
    Object.selectionForField "Bool" "viewerCanSubscribe" [] Decode.bool


{-| Check if the current viewer can update this object.
-}
viewerCanUpdate : SelectionSet Bool ElmGithub.Object.PullRequest
viewerCanUpdate =
    Object.selectionForField "Bool" "viewerCanUpdate" [] Decode.bool


{-| Reasons why the current viewer can not update this comment.
-}
viewerCannotUpdateReasons : SelectionSet (List ElmGithub.Enum.CommentCannotUpdateReason.CommentCannotUpdateReason) ElmGithub.Object.PullRequest
viewerCannotUpdateReasons =
    Object.selectionForField "(List Enum.CommentCannotUpdateReason.CommentCannotUpdateReason)" "viewerCannotUpdateReasons" [] (ElmGithub.Enum.CommentCannotUpdateReason.decoder |> Decode.list)


{-| Did the viewer author this comment.
-}
viewerDidAuthor : SelectionSet Bool ElmGithub.Object.PullRequest
viewerDidAuthor =
    Object.selectionForField "Bool" "viewerDidAuthor" [] Decode.bool


{-| Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
-}
viewerSubscription : SelectionSet (Maybe ElmGithub.Enum.SubscriptionState.SubscriptionState) ElmGithub.Object.PullRequest
viewerSubscription =
    Object.selectionForField "(Maybe Enum.SubscriptionState.SubscriptionState)" "viewerSubscription" [] (ElmGithub.Enum.SubscriptionState.decoder |> Decode.nullable)
