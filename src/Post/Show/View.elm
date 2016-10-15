module Post.Show.View exposing (..)


import Html exposing (div, text, a, hr, span, ul, li)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class, href, id)
import Markdown
import String exposing (..)
import Html.CssHelpers


import Post.Show.Models exposing (Post)
import Post.Show.Messages exposing (..)


import Base64


import SocialNetwork.Logo exposing (..)


import Post.Show.PostCss as PostCss


{ class } =
  Html.CssHelpers.withNamespace "post"


postView : Post -> Html.Html Msg
postView post =
  let
    postTextStr =
      case (Base64.decode post.text) of
        Ok text -> text
        Err _ -> ""

    author =
      if postHasAuthorPosition postTextStr then
        div [] []
      else
        postSimpleAuthor post

  in
    div [ class [PostCss.Container] ]
        [ postBody post True
        , author
        ]


postSummary : Post -> Html.Html Msg
postSummary post =
  let
    postId = "posts-" ++ (toString post.id)

  in
    a [ id postId
      , href "javascript://"
      , onClick (ShowPost post)
      , class [PostCss.Link]
      ]
      [
        div [ class [PostCss.Summary] ]
            [ postBody post False
            , postSimpleAuthor post
            , lineBreak
            ]
      ]


postBody : Post -> Bool -> Html.Html Msg
postBody post complete =
  let
    postTextStr =
      case (Base64.decode post.text) of
        Ok text -> text
        Err _ -> ""

  in
    div [ class [PostCss.Body]
        ]
        [ if complete then postComplete postTextStr post.author else postIncomplete postTextStr ]


numberOfLinesWithTextSearched : String -> String -> Int
numberOfLinesWithTextSearched text comparation =
  lines text
  |> List.filter (\line -> line == comparation)
  |> List.length


lineBreakText =
  "-----<<<<<continue<<<<<-----"


postHasLineBreakMarking : String -> Bool
postHasLineBreakMarking text =
  if numberOfLinesWithTextSearched text lineBreakText == 0 then
    False
  else
    True


postHeadLineBreak : String -> Html.Html Msg
postHeadLineBreak text =
  let
    head =
      case List.head (split lineBreakText text) of
        Just head -> head
        Nothing -> ""

    newText =
      lines head
      |> List.map (\line -> if postHasAuthorPosition line then "" else line)
  
  in
    join "\n" newText
    |> Markdown.toHtml [Html.Attributes.class "content hlsj"]


postIncomplete : String -> Html.Html Msg
postIncomplete text =
  postHeadLineBreak text


authorText =
  "-----<<<<<author-----<<<<<"


postHeadAuthor : String -> Html.Html Msg
postHeadAuthor text =
  let
    head =
      case List.head (split authorText text) of
        Just head -> head
        Nothing -> ""

    newText =
      lines head
      |> List.map (\line -> if postHasLineBreakMarking line then "" else line)

  in
    join "\n" newText
    |> Markdown.toHtml [Html.Attributes.class "content hlsj"]


postTailAuthor : String -> Html.Html Msg
postTailAuthor text =
  let
    tail =
      case List.tail (split authorText text) of
        Just tail -> tail
        Nothing -> [""]

    newText =
      tail
      |> List.map (\line -> if postHasLineBreakMarking line then "" else line)
  
  in
    join "\n" newText
    |> Markdown.toHtml [Html.Attributes.class "content hlsj"]


postComplete : String -> String -> Html.Html Msg
postComplete text author =
  div []
      [ postHeadAuthor text
      , if postHasAuthorPosition text then postCompleteAuthor author else div [] []
      , postTailAuthor text
      ]


postHasAuthorPosition : String -> Bool
postHasAuthorPosition text =
  if numberOfLinesWithTextSearched text authorText == 0 then
    False
  else
    True


postCompleteAuthor : String -> Html.Html Msg
postCompleteAuthor author =
  let
    items =
      [gitHub, twitter, linkedIn, mail]
      |> List.map (\item -> authorItem item) 

  in
    div [ class [PostCss.Author] 
        ]
        [ a [ href "javascript://"
            , class [PostCss.AuthorLink] 
            ]
            [ text author ]
        , ul [class [PostCss.AuthorList]
             ]
             items
        ]


authorItem : Html.Html msg -> Html.Html msg
authorItem item =
  li [ class [PostCss.AuthorItem] 
     ]
     [ a [ class [PostCss.AuthorItemLink]
         , href "javascript://"
         ]
         [ item ]
     ]


postSimpleAuthor : Post -> Html.Html Msg
postSimpleAuthor post =
  div [class [PostCss.SimpleAuthor]]
      [ a [ href "javascript://"
          , class [PostCss.SimpleAuthorLink]
          ]
          [ text post.author ]
      ]


lineBreak : Html.Html Msg
lineBreak =
  hr [ class [PostCss.LineBreak]
     ]
     [ ]
