module Post.Show.AuthorTest exposing (..)


import Test exposing (..)
import Expect


import String
import Html exposing (span)
import Html.Attributes exposing (class)
import Markdown


import Post.Show.View exposing (..)
import Post.Show.Messages exposing (..)


textWithoutAuthorMark: String
textWithoutAuthorMark =
  String.concat ["#This is a test\n","This post hasn't an author mark."]


textWithAuthorMark: String
textWithAuthorMark =
  String.concat [ "#This is a test\n"
                , authorText
                , "\n"
                , "This post has an author mark."
                ]


postTailWithAuthor: Html.Html Msg
postTailWithAuthor =
    String.concat ["\n", "This post has an author mark."]
    |> Markdown.toHtml [class "content hlsj"]


postTailWithoutAuthor: Html.Html Msg
postTailWithoutAuthor =
    ""
    |> Markdown.toHtml [class "content hlsj"]


all: Test
all =
  describe "Author"
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
    , test "Should return just the content of post below the author mark" <|
      \() ->
        Expect.equal postTailWithAuthor (postTailAuthor textWithAuthorMark)
    , test "Should return all blank when post doesn't have the author mark" <|
      \() ->
        Expect.equal postTailWithoutAuthor (postTailAuthor textWithoutAuthorMark)
    ] 
