module Footer.View exposing (..)


import Html exposing (footer, text)
import Html.Attributes exposing (class)


import Footer.Messages exposing (..)

footerView : Html.Html Msg
footerView =
  footer [ class "footer-main" ]
         [ text " In developiment © 2016 " ]
