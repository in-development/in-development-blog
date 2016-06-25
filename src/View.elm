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
import Navigation.View exposing (menuView)


view : AppModel -> Html.Html Msg
view model =
  div []
      [ menuView
      , pageView model
      ]
    

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