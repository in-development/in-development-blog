import Navigation

import Routing.Models exposing (..)
import Routing.Utils exposing (urlParser)

import Models exposing (..)
import Messages exposing (..)
import Update exposing (..)
import View exposing (..)
import Subscriptions exposing (..)

import Post.Commands exposing (getPosts)


urlUpdate : ( Route, Location ) -> AppModel -> ( AppModel, Cmd Msg )
urlUpdate ( route, location ) model =
  let
    isPosts =
      let path = location.path
      in
        List.length path == 1 && List.all (\p -> p == "posts") path

    r =
      case isPosts of
        True -> PostsRoute
        _ -> route

  in
    ( { model | route = r, location = location }, Cmd.none )


init : ( Route, Location ) -> ( AppModel, Cmd Msg )
init ( route, location ) =
    ( newAppModel route location, Cmd.map PostsMessagesMsg getPosts )


main : Program Never
main =
  Navigation.program urlParser
    { init = init
    , view = view
    , update = update
    , urlUpdate = urlUpdate
    , subscriptions = subscriptions
    }
