module Post.Show.ViewTest exposing (..)


import Test exposing (..)
import Expect


import Post.Show.Fixtures as Fixtures


import Post.Show.View exposing (..)


import Post.Show.AuthorTest as PostShowAuthor
import Post.Show.LineBreakTest as PostShowLineBreak


all: Test
all =
  describe "Post View Show"
    [ PostShowAuthor.all
    , PostShowLineBreak.all
    , view
    ]


view : Test
view =
  describe "View"
    [ describe "numberOfLinesWithTextSearched"
        [ test "Should return 0 when the textdoes not have the comparation test" <|
          \() ->
            Expect.equal 0 (numberOfLinesWithTextSearched Fixtures.textWithoutLineBreakMark lineBreakText)
        , test "Should return the number of lines where has a line break" <|
          \() ->
            Expect.equal 1 (numberOfLinesWithTextSearched Fixtures.textWithLineBreakMark lineBreakText)
        , test "Should return the number of lines where has a line break" <|
          \() ->
            Expect.equal 2 (numberOfLinesWithTextSearched Fixtures.textWithTwoLineBreaksMark lineBreakText)
        ]
    ]
