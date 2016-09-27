module Tests exposing (..)

import Test exposing (..)

import RoutingParser
import Post.Show.ViewTest as PostShowViewTest


all : Test
all =
    describe "In development"
        [ RoutingParser.all
        , PostShowViewTest.all
        ]
