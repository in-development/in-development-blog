module Post.Show.Models exposing (..)


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