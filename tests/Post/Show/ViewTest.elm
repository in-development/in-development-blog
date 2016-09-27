module Post.Show.ViewTest exposing (..)


import Test exposing (..)
import Expect


import Post.Show.AuthorTest as PostShowAuthor 


all: Test
all =
  describe "Post View Show"
    [ PostShowAuthor.all
    ]
