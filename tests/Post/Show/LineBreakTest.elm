module Post.Show.LineBreakTest exposing (..)


import Test exposing (..)
import Expect


import Post.Show.Fixtures as Fixtures


import Post.Show.View exposing (..)


all: Test
all =
  describe "Line Break"
    [ describe "postHeadLineBreakMark"
        [ test "Should return just the content the post above line break" <|
          \() ->
            Expect.equal Fixtures.postHeadLineBreak (postHeadLineBreak Fixtures.textWithLineBreakMark)
        , test "Should return all post when doesn't have line break" <|
          \() ->
            Expect.equal Fixtures.postWithoutLineBreakMark (postHeadLineBreak Fixtures.textWithoutLineBreakMark)
        ]
    , describe "postHasLineBreakMarking"
        [ test "Should return True when text has a line break mark" <|
          \() ->
           Expect.true "Expected True when text has a line break mark" (postHasLineBreakMarking Fixtures.textWithLineBreakMark)
        , test "Should return False when text hasn't a line break mark" <|
          \() ->
            Expect.false "Expected False when text hasn't a line brak mark" (postHasLineBreakMarking Fixtures.textWithoutLineBreakMark)
        ]
    ]
