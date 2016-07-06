module Models exposing (..)


import Routing.Models exposing (..)


import Posts.Models exposing (Post, initialPost, Posts)


type alias AppModel =
  { title : String
  , posts : Posts
  , post : Post
  , location : Location
  , route : Route
  }


newAppModel : Route -> Location -> AppModel
newAppModel route location =
    { title = "Posts"
    , posts = []
    , post = initialPost
    , location = location
    , route = route
    }