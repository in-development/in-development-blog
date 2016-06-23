module Models exposing (..)


import Routing.Models exposing (..)


type alias Post =
  { id : Int
  , author : String
  , text : String
  }


type alias Posts = List Post


type alias AppModel =
  { title : String
  , posts : Posts
  , location : Location
  , route : Route
  }


newAppModel : Route -> Location -> AppModel
newAppModel route location =
    { title = "Posts"
    , posts = []
    , location = location
    , route = route
    }