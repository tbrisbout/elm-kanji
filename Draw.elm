module Draw exposing (..)

import Collage exposing (..)


hLine : Float -> Float -> Float -> Path
hLine start end y =
    segment ( start, y ) ( end, y )


vLine : Float -> Float -> Float -> Path
vLine start end x =
    segment ( x, start ) ( x, end )
