module Models exposing (..)


import Routing.Models exposing (..)


import Post.Models exposing (Posts)


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