module Post.New.View exposing (..)

import Html exposing (div, text, label, input, textarea, button)
import Html.Attributes exposing (value)
import Html.Events exposing (onInput, onClick)
import Html.CssHelpers


import Post.New.Messages exposing (..)
import Post.Models exposing (Posts, Post)


import Post.New.NewCss as NewCss


{ class } =
  Html.CssHelpers.withNamespace "post-new"


newPostView : Posts -> Post -> Html.Html Msg
newPostView posts model = div []
                  [ div [ class [NewCss.Container] ]
                        [ label [ class [NewCss.Label] ]
                                [ text "Author:"]
                        , input [ class [NewCss.AuthorInput]
                                , value model.author
                                , onInput SetAuthor
                                ]
                                []
                        ]
                  , div [ class [NewCss.Container] ]
                        [ label [ class [NewCss.Label] ]
                                [ text "Post:"]
                        , textarea [ class [NewCss.TextInput]
                                   , value model.text
                                   , onInput SetText
                                   ]
                                   []
                        ]
                  , div [ class [NewCss.Container] ]
                        [
                          button [ class [NewCss.Button]
                                 , onClick (SavePost posts model) 
                                 ]
                                 [ text "Save" ]
                        ]
                  ]
