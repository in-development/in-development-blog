module Post.Show.View exposing (..)


import Html exposing (div, text, a, hr, span, ul, li)
import Html.Events exposing (onClick)
import Html.Attributes exposing (style, class, href, id)
import Markdown
import String exposing (..)


import Post.Show.Models exposing (Post)
import Post.Show.Messages exposing (..)


import Base64


import SocialNetwork.Logo exposing (..)


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
    div [ style [("width", "70%"), ("left", "10%"), ("position", "relative"), ("float", "left"), ("margin-bottom", "0.5em")] ]
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
      , style [("text-decoration", "none"), ("color", "#000000")]
      ]
      [
        div [ style [("width", "70%"), ("left", "10%"), ("position", "relative"), ("float", "left"), ("margin-bottom", "0.5em")] ]
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
    div [ style [ ("margin", "0.5em 0 0 0.5em")
                , ("font-family", "Helvetica Neue, Helvetica, Arial, sans-serif")
                , ("text-rendering", "optimizeLegibility")
                ]
        , class "post"
        ]
        [ if complete then postComplete postTextStr post.author else postIncomplete postTextStr ]


lineBreakText =
  "-----<<<<<continue<<<<<-----"


postHeadLineBreak : String -> Html.Html Msg
postHeadLineBreak text =
  let
    head =
      case List.head (split lineBreakText text) of
        Just head -> head
        Nothing -> ""

    newText =
      List.map (\line -> if postHasAuthorPosition line then "" else line) (lines head)
  
  in
    Markdown.toHtml [class "content hlsj"] (join "\n" newText)


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
      List.map (\line -> if lineBreakText == line then "" else line) (lines head)

  in
    Markdown.toHtml [class "content hlsj"] (join "\n" newText)


postTailAuthor : String -> Html.Html Msg
postTailAuthor text =
  let
    tail =
      case List.tail (split authorText text) of
        Just tail -> tail
        Nothing -> [""]

    newText =
      List.map (\line -> if lineBreakText == line then "" else line) tail
  
  in
    Markdown.toHtml [class "content hlsj"] (join "\n" newText)


postComplete : String -> String -> Html.Html Msg
postComplete text author =
  div []
      [ postHeadAuthor text
      , if postHasAuthorPosition text then postCompleteAuthor author else div [] []
      , postTailAuthor text
      ]


postHasLineBreakMarking : String -> Bool
postHasLineBreakMarking text =
  if (List.length (List.filter (\line -> line == lineBreakText) (lines text))) == 0 then
    False
  else
    True


postHasAuthorPosition : String -> Bool
postHasAuthorPosition text =
  if (List.length (List.filter (\line -> line == authorText) (lines text))) == 0 then
    False
  else
    True


postCompleteAuthor : String -> Html.Html Msg
postCompleteAuthor author =
  div [ style [ ("text-align", "center")
              , ("margin-bottom", "3em")
              ]
      ]
      [ a [ href "#"
          , style [ ("text-decoration", "none")
                  , ("color", "#000000")
                  , ("font-size", "1.5em")
                  , ("bold", "300")
                  ]
          ]
          [ text author ]
      , ul []
           [ li [ style [ ("display", "inline")
                        , ("padding", "0.5em")
                        , ("margin-left", "-2.5em")
                        ]
                ]
                [ a [ style [ ("text-decoration", "none") ]
                    , href "#"
                    ]
                    [ gitHub ]
                ]
           , li [ style [ ("display", "inline")
                        , ("padding", "0.5em")
                        ]
                ]
                [ a [ style [ ("text-decoration", "none") ]
                    , href "#"
                    ]
                    [ twitter ]
                ]
           , li [ style [ ("display", "inline")
                        , ("padding", "0.5em")
                        ]
                ]
                [ a [ style [ ("text-decoration", "none") ]
                    , href "#"
                    ]
                    [ linkedIn ]
                ]
           , li [ style [ ("display", "inline")
                        , ("padding", "0.5em")
                        ]
                ]
                [ mail ]
           ]
      ]


postSimpleAuthor : Post -> Html.Html Msg
postSimpleAuthor post =
  div [style [("text-align", "right"), ("margin", "0.5em 0.5em 0.5em 0"), ("font-size", "0.8em")]]
      [ text post.author ]


lineBreak : Html.Html Msg
lineBreak =
  hr [ style [ ("border", "0")
             , ("height", "2px")
             , ("border-top", "1px dashed #000000")
             , ("border-bottom", "1px dashed black")
             , ("margin-top", "4.5em")
             ]
     ]
     [ ]
