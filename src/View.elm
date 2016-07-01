module View exposing (..)


import Html exposing (div, text, h1, a)
import Html.App
import Html.Events exposing (onClick)
import Html.Attributes exposing (style, class, href, id)
import Markdown


import Models exposing (AppModel)
import Messages exposing (..)


import Routing.Models exposing (..)


import Posts.View exposing (postsView)


view : AppModel -> Html.Html Msg
view model =
  div []
      [ menu
      , pageView model
      ]
    


menu : Html.Html Msg
menu =
    div [ style [("background-color", "#000000"), ("color", "#FFFFFF")] ]
        [ div []
              [ menuLink ShowPosts "btnPosts" "Posts"
              , text " | "
              , menuLink ShowAdmin "btnAdmin" "Admin"
              ]
        ]


menuLink : Msg -> String -> String -> Html.Html Msg
menuLink message viewId label =
    a [ id viewId
      , href "javascript://"
      , onClick message
      , style [("text-decoration", "none"), ("color", "#FFFFFF")]
      ]
      [ text label ]


pageView : AppModel -> Html.Html Msg
pageView model =
  case model.route of
      PostsRoute ->
        div []
            [ h1  [ style [("margin-left", "1em")] ]
                  [ text model.title ]
            , div [ style [("margin-top", "1em")] ]
                  [ Html.App.map PostsMessagesMsg (postsView model.posts) ]
            ]

      AdminRoute ->
        div []
            [ h1 [ id "title"]
                 [ text "Admin" ]
            ]

      NotFoundRoute ->
        notFoundView


notFoundView : Html.Html msg
notFoundView =
    div []
        [ text "Not Found" ]