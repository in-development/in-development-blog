module Post.Show.AuthorTest exposing (..)


import Test exposing (..)
import Expect


import Post.Show.Fixtures as Fixtures


import Post.Show.View exposing (..)


all: Test
all =
  describe "Author"
    [ test "Should return False in postHasAuthorPosition funciotn when text hasn't and author mark" <|
      \() ->
        Expect.false "Expect False when post hasn't author mark" (postHasAuthorPosition Fixtures.textWithoutAuthorMark)
    , test "Should return True in postHasAuthorPosition funciotn when text has and author mark" <|
      \() ->
        Expect.true "Expect True when post has author mark" (postHasAuthorPosition Fixtures.textWithAuthorMark)
    , test "Should return just the content of post below the author mark" <|
      \() ->
        Expect.equal Fixtures.postTailWithAuthor (postTailAuthor Fixtures.textWithAuthorMark)
    , test "Should return all blank when post doesn't have the author mark" <|
      \() ->
        Expect.equal Fixtures.postTailWithoutAuthor (postTailAuthor Fixtures.textWithoutAuthorMark)
    , test "Should return just the content of post above the author mark" <|
      \() ->
        Expect.equal Fixtures.postHeadWithAuthor (postHeadAuthor Fixtures.textWithAuthorMark)
    , test "Should return all post when it doesn't have the author mark" <|
      \() ->
        Expect.equal Fixtures.postHeadWithoutAuthor (postHeadAuthor Fixtures.textWithoutAuthorMark)
    , test "Should return post with line break without line break" <|
      \() ->
        Expect.equal Fixtures.postHeadWithLineBreak (postHeadAuthor Fixtures.textWithoutAuthorMarkWithLineBreak)
    ] 
