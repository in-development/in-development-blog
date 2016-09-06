module RoutingParser exposing (all)


import Test exposing (..)
import Expect
import Navigation

import Routing.Models exposing (..)
import Routing.Parser exposing (parser)


all: Test
all =
  describe "Routing Parser"
    [ test "Should parse '#/' to PostsRoute" <|
        \() ->
          Expect.equal (parse "#/") PostsRoute
    , test "Should parse '#/admin' to AdminRoute" <|
        \() ->
          Expect.equal (parse "#/admin") AdminRoute
    , test "Should parse '#/post/new' to NewPostRoute" <|
        \() ->
          Expect.equal (parse "#/post/new") NewPostRoute
    , test "Should parse '#/post/10' to PostRoute" <|
        \() ->
          Expect.equal (parse "#/post/10") (PostRoute 10)
    , test "Should parse '#/otherthing' to NotFoundRoute" <|
        \() ->
          Expect.equal (parse "#/otherthing") NotFoundRoute
    ]


parse : String -> Route
parse hash =
  parser (location hash)


location : String -> Navigation.Location
location hash =
  { href = ""
  , host = ""
  , hostname = ""
  , protocol = ""
  , origin = ""
  , port_ = ""
  , pathname = ""
  , search = ""
  , hash = hash
  , username = ""
  , password = ""
  }
