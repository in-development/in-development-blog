module Models exposing (..)


import Routing.Models exposing (..)


import Post.Models exposing (Posts, Post, initialPost)


type alias AppModel =
  { title : String
  , posts : Posts
  , newPost : Post
  , route : Route
  }


newAppModel : Route -> AppModel
newAppModel route =
    { title = "Posts"
    , posts = []
    , newPost = initialPost
    , route = route
    }
