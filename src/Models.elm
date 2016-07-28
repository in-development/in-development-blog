module Models exposing (..)


import Routing.Models exposing (..)


import Post.Models exposing (Posts, Post, initialPost)


type alias AppModel =
  { title : String
  , posts : Posts
  , newPost : Post
  , location : Location
  , route : Route
  }


newAppModel : Route -> Location -> AppModel
newAppModel route location =
    { title = "Posts"
    , posts = []
    , newPost = initialPost
    , location = location
    , route = route
    }
