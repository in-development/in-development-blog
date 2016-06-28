module Posts.Models exposing (..)


type alias Post =
  { id : Int
  , author : String
  , text : String
  }


initialPost : Post
initialPost =
  { id = 0
  , author = ""
  , text = ""
  }


type alias Posts = List Post