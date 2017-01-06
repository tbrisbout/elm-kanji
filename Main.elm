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


boxStyle : Html.Attribute msg
boxStyle =
    style
        [ ( "width", (toString width) ++ "px" )
        , ( "margin", "15px auto" )
        , ( "background-color", "white" )
        ]


view : Html msg
view =
    kanjiList
        |> List.map displayKanji
        |> Html.div []


main =
    view
