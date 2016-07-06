module Posts.List.View exposing (..)


import Html exposing (div, text)
import Markdown


import Posts.Show.View exposing (postView)


import Posts.List.Models exposing (Posts)
import Posts.List.Messages exposing (..)


postsView : Posts -> Html.Html Msg
postsView posts =
  let
    postList = List.map postView posts

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
        [postVW]