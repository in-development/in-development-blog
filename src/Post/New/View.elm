module Post.New.View exposing (..)

import Html exposing (div, text, label, input, textarea, button)
import Html.Attributes exposing (style)


import Post.New.Messages exposing (..)

newPostView : Html.Html Msg
newPostView = div []
                  [
                    div [ style [("margin", "1em")] ]
                        [
                          label [ style [("display", "block"), ("clear", "right")] ]
                                [ text "Author:"],
                          input [ style [("width", "30%")] ]
                                []
                        ],
                    div [ style [("margin", "1em")] ]
                        [
                          label [ style [("display", "block"), ("clear", "right")] ]
                                [ text "Post:"],
                          textarea [ style [("width", "100%"), ("height", "40%"), ("min-height", "400px")] ]
                                   []
                        ],
                    div [ style [("margin", "1em")] ]
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
                                 ]
                                 [ text "Save" ]
                        ]
                  ]
