module Post.New.View exposing (..)

import Html exposing (div, text, label, input, textarea, button)
import Html.Attributes exposing (style, value)
import Html.Events exposing (onInput, onClick)


import Post.New.Messages exposing (..)
import Post.Models exposing (Posts, Post)


newPostView : Posts -> Post -> Html.Html Msg
newPostView posts model = div []
                  [ div [ style [("margin", "1em")] ]
                        [ label [ style [("display", "block"), ("clear", "right")] ]
                                [ text "Author:"]
                        , input [ style [("width", "30%")]
                                , value model.author
                                , onInput SetAuthor
                                ]
                                []
                        ]
                  , div [ style [("margin", "1em")] ]
                        [ label [ style [("display", "block"), ("clear", "right")] ]
                                [ text "Post:"]
                        , textarea [ style [ ("width", "100%")
                                           , ("height", "40%")
                                           , ("min-height", "400px")
                                           ]
                                   , onInput SetText
                                   ]
                                   []
                        ]
                  , div [ style [("margin", "1em")] ]
                        [
                          button [ style [
                                          ("position", "relative"),
                                          ("float", "right"),
                                          ("width", "10%"),
                                          ("height", "10%"),
                                          ("min-height", "30px"),
                                          ("font-size", "1em"),
                                          ("cursor", "pointer")
                                         ]
                                 , onClick (SavePost posts model) 
                                 ]
                                 [ text "Save" ]
                        ]
                  ]
