module Routing.Utils exposing (..)


import Hop exposing (matchUrl, makeUrl, matcherToPath)
import Navigation


import Routing.Models exposing (..)
import Routing.Matchers exposing (matcherPosts, matcherAdmin, matcherPost)
import Routing.Config exposing (routerConfig)


reverse : Route -> String
reverse route =
  case route of
    PostsRoute ->
      matcherToPath matcherPosts []

    AdminRoute ->
        matcherToPath matcherAdmin []

    PostRoute id ->
      matcherToPath matcherPost [toString id]

    NotFoundRoute ->
        ""


program = Navigation.program


navigationCmd : String -> Cmd a
navigationCmd path =
  Navigation.modifyUrl (makeUrl routerConfig path)


urlParser : Navigation.Parser ( Route, Location )
urlParser =
    Navigation.makeParser (.href >> matchUrl routerConfig)