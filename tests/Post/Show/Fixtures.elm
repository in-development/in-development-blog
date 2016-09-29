module Post.Show.Fixtures exposing (..)


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


textWithLineBreakMark: String
textWithLineBreakMark =
  String.concat [ "#This is a test\n"
                , lineBreakText
                , "\n"
                , "This post has an author mark."
                ]


textWithoutLineBreakMark: String
textWithoutLineBreakMark =
  String.concat [ "#This is a test\n"
                , "This post has an author mark."
                ]


textHeadLineBreakMark: String
textHeadLineBreakMark =
  String.concat [ "#This is a test\n"
                ]


textWithoutAuthorMarkWithLineBreak: String
textWithoutAuthorMarkWithLineBreak =
  lineBreakText


postTailWithAuthor: Html.Html Msg
postTailWithAuthor =
    String.concat ["\n", "This post has an author mark."]
    |> Markdown.toHtml [class "content hlsj"]


postTailWithoutAuthor: Html.Html Msg
postTailWithoutAuthor =
    ""
    |> Markdown.toHtml [class "content hlsj"]


postHeadWithAuthor: Html.Html Msg
postHeadWithAuthor =
    String.concat ["#This is a test\n"]
    |> Markdown.toHtml [class "content hlsj"]


postHeadWithoutAuthor: Html.Html Msg
postHeadWithoutAuthor =
  textWithoutAuthorMark
  |> Markdown.toHtml [class "content hlsj"]


postHeadWithLineBreak: Html.Html Msg
postHeadWithLineBreak =
  ""
  |> Markdown.toHtml [class "content hlsj"]


postHeadLineBreak: Html.Html Msg
postHeadLineBreak =
  textHeadLineBreakMark
  |> Markdown.toHtml [class "content hlsj"]


postWithoutLineBreakMark: Html.Html Msg
postWithoutLineBreakMark =
  textWithoutLineBreakMark
  |> Markdown.toHtml [class "content hlsj"]
