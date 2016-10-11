port module Stylesheets exposing (..)

import Css.File exposing (..)
import Html exposing (div)
import Html.App as Html


import MainCss
import Header.HeaderCss as HeaderCss
import Header.NavigationCss as NavigationCss
import Footer.FooterCss as FooterCss


port files : CssFileStructure -> Cmd msg


cssFiles : CssFileStructure
cssFiles =
    toFileStructure [ ( "src/assets/styles.css", compile [ MainCss.css ] )
                    , ( "src/assets/header.css", compile [ HeaderCss.css, NavigationCss.css ] )
                    , ( "src/assets/footer.css", compile [ FooterCss.css ] )
                    ]


main : Program Never
main =
  Html.program
    { init = ( (), files cssFiles )
    , view = \_ -> (div [] [])
    , update = \_ _ -> ( (), Cmd.none )
    , subscriptions = \_ -> Sub.none
    }
