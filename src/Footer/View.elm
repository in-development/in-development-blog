module Footer.View exposing (..)


import Html exposing (footer, text)
import Html.Attributes exposing (class)
import Html.CssHelpers


import Footer.FooterCss as FooterCss


import Routing.Models exposing (..)


{ class } =
  Html.CssHelpers.withNamespace "footer"


footerView : Html.Html msg
footerView =
  footer [ class [FooterCss.Main] ]
         [ text " In development © 2016 " ]
