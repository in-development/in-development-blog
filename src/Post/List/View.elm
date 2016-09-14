module Post.List.View exposing (..)


import Html exposing (div, text)
import Html.App
import Markdown


import Post.Show.View exposing (postSummary)


import Post.List.Models exposing (Posts)
import Post.List.Messages exposing (..)


postsView : Posts -> Html.Html Msg
postsView posts =
  let
    postList = List.map postSummary posts

    postVW =
      case posts of
        [] -> 
          div []
              [ text "Loading...." ]
        _ ->
          div []
              postList

  in
    div []
        [Html.App.map PostMessagesMsg (postVW)]
