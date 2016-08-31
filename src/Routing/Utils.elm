module Routing.Utils exposing (urlParser)


import Navigation
import UrlParser exposing ((</>), s, format, oneOf, int)
import String

import Routing.Models exposing (..)


routeMatchers : UrlParser.Parser (Route -> a) a
routeMatchers =
  oneOf
    [
      format PostsRoute (s "" ),
      format AdminRoute (s "admin" ),
      format PostRoute (s "post" </> int ),
      format NewPostRoute (s "post" </> s "new" )
    ]


parser : Navigation.Location -> Route
parser location =
  let
    result =
      location.hash
        |> String.dropLeft 2
        |> UrlParser.parse identity routeMatchers
  in
    case result of
      Ok route -> route

      Err _ -> NotFoundRoute


urlParser : Navigation.Parser Route
urlParser =
    Navigation.makeParser parser
