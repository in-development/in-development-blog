module Post.Show.ViewTest exposing (..)


import Test exposing (..)
import Expect


import Post.Show.View exposing (..)


textWithoutAuthorMark: String
textWithoutAuthorMark =
  "#This is a test\nThis post hasn't an author mark."

textWithAuthorMark: String
textWithAuthorMark =
  "#This is a test\n-----<<<<<author-----<<<<<\nThis post has an author mark."


all: Test
all =
  describe "Post Show View"
    [ test "Should return False in postHasAuthorPosition funciotn when text hasn't and author mark" <|
      \() ->
        Expect.false "Expect False when post hasn't author mark" (postHasAuthorPosition textWithoutAuthorMark)
    , test "Should return True in postHasAuthorPosition funciotn when text has and author mark" <|
      \() ->
        Expect.true "Expect True when post has author mark" (postHasAuthorPosition textWithAuthorMark)
    , test "Should return 0 to getTextPosition function when text doesn't have the mark asked." <|
      \() ->
        Expect.equal 0 (getTextPosition textWithoutAuthorMark authorText)
    , test "Should return 1 to getTextPosition function when text has one mark asked." <|
      \() ->
        Expect.equal 1 (getTextPosition textWithAuthorMark authorText)
    ] 
