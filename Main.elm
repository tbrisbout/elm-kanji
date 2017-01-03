module Main exposing (..)

import Html exposing (Html)
import Collage exposing (..)
import Element exposing (toHtml)


lineStyle : LineStyle
lineStyle =
    { defaultLine | width = 4, cap = Round }


type alias Kanji =
    Form


width : Float
width =
    600


height : Float
height =
    600


ichi : Kanji
ichi =
    segment ( -100, 0 ) ( 100, 0 )
        |> traced lineStyle


view : Html msg
view =
    [ ichi ]
        |> collage width height
        |> toHtml


main =
    view
