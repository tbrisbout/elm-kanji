module Main exposing (..)

import Html exposing (Html)
import Html.Attributes exposing (style)
import Collage exposing (..)
import Element exposing (toHtml, Element)


lineStyle : LineStyle
lineStyle =
    { defaultLine | width = 5, cap = Round }


type alias Kanji =
    List Form


width : Int
width =
    600


height : Int
height =
    600


ichi : Kanji
ichi =
    [ segment ( -100, 0 ) ( 100, 0 )
    ]
        |> List.map (traced lineStyle)


ni : Kanji
ni =
    [ segment ( -80, 50 ) ( 80, 50 )
    , segment ( -100, -50 ) ( 100, -50 )
    ]
        |> List.map (traced lineStyle)


displayKanji : Kanji -> Html msg
displayKanji kanji =
    Html.div [ boxStyle ]
        [ kanji
            |> collage width height
            |> toHtml
        ]


boxStyle : Html.Attribute msg
boxStyle =
    style
        [ ( "border", "1px solid black" )
        , ( "width", (toString width) ++ "px" )
        , ( "margin", "15px auto" )
        ]


view : Html msg
view =
    [ ichi, ni ]
        |> List.map displayKanji
        |> Html.div []


main =
    view
