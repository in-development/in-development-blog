module Models exposing (..)

type alias Post =
  { id : Int
  , author : String
  , text : String
  }


type alias Posts = List Post


type alias AppModel =
  { title : String
  , posts : Posts
  }


initialAppModel : AppModel
initialAppModel =
  { title = "Posts"
  , posts = []
  }