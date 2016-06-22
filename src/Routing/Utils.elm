module Routing.Utils exposing (..)

import Hop exposing (..)


import Routing.Models exposing (..)
import Routing.Config exposing (..)


reverse : Route -> String
reverse route =
    case route of
        PostsRoute ->
            matcherToPath matcherPosts []

        AdminRoute ->
            matcherToPath matcherAdmin []

        NotFoundRoute ->
            ""