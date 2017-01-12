module Main exposing (..)

import Html exposing (Html)
import Html.Attributes exposing (style)
import Collage exposing (..)
import Element exposing (toHtml, Element)
import Kanji exposing (Kanji, kanjiList)


lineStyle : LineStyle
lineStyle =
    { defaultLine | width = 5, cap = Round }


width : Int
width =
    600


height : Int
height =
    600


displayKanji : Kanji -> Html msg
displayKanji kanji =
    Html.div [ boxStyle ]
        [ kanji
            |> List.map (traced lineStyle)
            |> collage width height
            |> toHtml
        ]


view : Html msg
view =
    kanjiList
        |> List.map displayKanji
        |> Html.div [ mainStyle ]


main =
    view



-- STYLES


boxStyle : Html.Attribute msg
boxStyle =
    style
        [ ( "width", (toString width) ++ "px" )
        , ( "margin", "10px" )
        , ( "background-color", "white" )
        , ( "box-shadow", "rgba(0,0,0,.1) 0 35px 35px" )
        ]


mainStyle : Html.Attribute msg
mainStyle =
    style
        [ ( "display", "flex" )
        , ( "flex-wrap", "wrap" )
        , ( "justify-content", "center" )
        , ( "text-align", "center" )
        ]
