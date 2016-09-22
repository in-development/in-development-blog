module View exposing (..)


import Html exposing (div, text, h1, a)
import Html.App
import Html.Events exposing (onClick)
import Html.Attributes exposing (style, class, href, id)
import Markdown


import Models exposing (AppModel)
import Messages exposing (..)


import Routing.Models exposing (..)


import Post.Show.View exposing (postView)
import Post.List.View exposing (postsView)
import Post.New.View exposing (newPostView)


import Header.View exposing (headerView)


import Footer.View exposing (footerView)


view : AppModel -> Html.Html Msg
view model =
  div []
      [ Html.App.map HeaderMessagesMsg (headerView model.route)
      , pageView model
      , Html.App.map FooterMessagesMsg (footerView)
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

    PostRoute postId ->
      let
        post =
          List.head (List.filter (\p -> p.id == postId) model.posts)

      in
        case post of
          Just p ->
            div []
                [ div [ style [("margin-top", "1em")] ]
                      [ Html.App.map PostMessagesMsg (postView p) ]
                ]
          Nothing ->
            notFoundView

    NewPostRoute ->
      let
        newId =
          List.length model.posts

        newPost =
          model.newPost
        
        post =
          { newPost | id = newId } 
      in
      div []
          [ div [ style [("margin-top", "1em")] ]
                [ Html.App.map NewPostMessagesMsg (newPostView model.posts post) ]
          ]

    NotFoundRoute ->
      notFoundView


notFoundView : Html.Html msg
notFoundView =
  div []
      [ text "Not Found" ]
