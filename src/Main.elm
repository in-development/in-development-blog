import Html.App as Html


import Navigation
import Hop exposing (matchUrl)
import Hop.Types exposing (Router, Location)


import Routing.Models exposing (Route)
import Routing.Config exposing (routerConfig)


import Models exposing (..)
import Actions exposing (..)
import Update exposing (..)
import View exposing (..)
import Commands exposing (..)
import Subscriptions exposing (..)


urlParser : Navigation.Parser ( Route, Location )
urlParser =
    Navigation.makeParser (.href >> matchUrl routerConfig)


urlUpdate : ( Route, Location ) -> AppModel -> ( AppModel, Cmd Msg )
urlUpdate ( route, location ) model =
    ( { model | route = route, location = location }, Cmd.none )


init : ( Route, Hop.Types.Location ) -> ( AppModel, Cmd Msg )
init ( route, location ) =
    ( newAppModel route location, getPosts )


main =
    Navigation.program urlParser
    { init = init
    , view = view
    , update = update
    , urlUpdate = urlUpdate
    , subscriptions = subscriptions
    }