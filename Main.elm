module Main exposing (..)

import Html exposing (Html)
import Html.Attributes exposing (style)
import Collage exposing (..)
import Element exposing (toHtml, Element)


hLine : Float -> Float -> Float -> Path
hLine start end y =
    segment ( start, y ) ( end, y )


lineStyle : LineStyle
lineStyle =
    { defaultLine | width = 5, cap = Round }


type alias Kanji =
    List Path


width : Int
width =
    600


height : Int
height =
    600


ichi : Kanji
ichi =
    [ hLine -100 100 0
    ]


ni : Kanji
ni =
    [ hLine -80 80 50
    , hLine -100 100 -50
    ]


san : Kanji
san =
    [ hLine -100 100 80
    , hLine -80 80 0
    , hLine -100 100 -80
    ]


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
        [ ( "border", "1px solid black" )
        , ( "width", (toString width) ++ "px" )
        , ( "margin", "15px auto" )
        ]


view : Html msg
view =
    [ ichi, ni, san ]
        |> List.map displayKanji
        |> Html.div []


main =
    view
