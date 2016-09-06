module Tests exposing (..)

import Test exposing (..)

import RoutingParser


all : Test
all =
    describe "In development"
        [ RoutingParser.all
        ]
