module Post.Show.LineBreakTest exposing (..)


import Test exposing (..)
import Expect


import Post.Show.Fixtures as Fixtures


import Post.Show.View exposing (..)


all: Test
all =
  describe "Line Break"
    [ test "Should return just the content the post above line break" <|
      \() ->
        Expect.equal Fixtures.postHeadLineBreak (postHeadLineBreak Fixtures.textWithLineBreakMark)
    , test "Should return all post when doesn't have line break" <|
      \() ->
        Expect.equal Fixtures.postWithoutLineBreakMark (postHeadLineBreak Fixtures.textWithoutLineBreakMark)
    ]
