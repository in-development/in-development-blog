module Post.Show.ViewTest exposing (..)


import Test exposing (..)
import Expect


import Post.Show.AuthorTest as PostShowAuthor
import Post.Show.LineBreakTest as PostShowLineBreak


all: Test
all =
  describe "Post View Show"
    [ PostShowAuthor.all
    , PostShowLineBreak.all
    ]
