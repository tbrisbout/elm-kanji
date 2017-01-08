module Draw exposing (..)

import Collage exposing (Path, segment, path)


hLine : Float -> Float -> Float -> Path
hLine start end y =
    segment ( start, y ) ( end, y )


vLine : Float -> Float -> Float -> Path
vLine start end x =
    segment ( x, start ) ( x, end )


curvedLine : ( Float, Float ) -> ( Float, Float ) -> Float -> Path
curvedLine ( xa, ya ) ( xb, yb ) offset =
    let
        x =
            ((xa + xb) / 2) + offset

        y =
            ((ya + yb) / 2) - (abs offset)
    in
        path [ ( xa, ya ), ( x, y ), ( xb, yb ) ]
