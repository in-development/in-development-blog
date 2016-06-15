module Models exposing (..)

type alias Post =
  { author : String
  , text : String
  }


post1 : Post
post1 =
  { author = "Rodrigo Morais"
  , text = "This is the first text."
  }


post2 : Post
post2 =
  { author = "Rodrigo Morais"
  , text = "This is the second text."
  }


type alias Posts = List Post


type alias AppModel =
  { title : String
  , posts : Posts
  }


initialAppModel : AppModel
initialAppModel =
  { title = "Posts"
  , posts = [post1, post2]
  }