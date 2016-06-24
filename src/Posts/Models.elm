module Posts.Models exposing (..)


type alias Post =
  { id : Int
  , author : String
  , text : String
  }


type alias Posts = List Post