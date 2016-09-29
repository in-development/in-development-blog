module Tests exposing (..)

import Test exposing (..)

import RoutingParser
import Post.Show.ViewTest as PostShowViewTest
import Post.Show.LineBreakTest as PostShowLineBreakTest


all : Test
all =
    describe "In development"
        [ RoutingParser.all
        , PostShowViewTest.all
        , PostShowLineBreakTest.all
        ]
