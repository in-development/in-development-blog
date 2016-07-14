import Html.App as Html


import Routing.Models exposing (..)
import Routing.Config exposing (routerConfig)
import Routing.Utils exposing (urlParser, program)


import Models exposing (..)
import Messages exposing (..)
import Update exposing (..)
import View exposing (..)
import Subscriptions exposing (..)


import Posts.Commands exposing (getPosts)


import Array


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


main =
    program urlParser
    { init = init
    , view = view
    , update = update
    , urlUpdate = urlUpdate
    , subscriptions = subscriptions
    }