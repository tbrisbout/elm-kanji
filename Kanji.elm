module Kanji exposing (Kanji, kanjiList)

import Collage exposing (..)
import Draw exposing (hLine, vLine, curvedLine)


type alias Kanji =
    List Path


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


yon : Kanji
yon =
    [ vLine 100 -100 -100
    , hLine -100 100 100
    , vLine 100 -100 100
    , path [ ( -20, 100 ), ( -30, 50 ), ( -50, 0 ), ( -80, -50 ) ]
    , path [ ( 20, 100 ), ( 20, -20 ), ( 30, -30 ), ( 90, -30 ) ]
    , hLine -100 100 -100
    ]


go : Kanji
go =
    [ hLine -60 60 80
    , segment ( -10, 80 ) ( -40, -80 )
    , hLine -60 50 0
    , vLine 0 -80 50
    , hLine -80 80 -80
    ]


roku : Kanji
roku =
    [ vLine 60 40 0
    , hLine -60 60 30
    , segment ( -20, 10 ) ( -60, -40 )
    , segment ( 20, 10 ) ( 60, -40 )
    ]


nana : Kanji
nana =
    [ segment ( -60, 30 ) ( 60, 40 )
    , path [ ( -30, 100 ), ( -30, -60 ), ( -25, -65 ), ( 55, -65 ), ( 60, -60 ), ( 60, -50 ) ]
    ]


hachi : Kanji
hachi =
    [ downLeftCurve
    , curvedLine ( 20, 60 ) ( 50, -60 ) -5
    ]


kyuu : Kanji
kyuu =
    [ downLeftCurve
    , hLine -60 30 30
    , path [ ( 30, 30 ), ( 30, -55 ), ( 35, -60 ), ( 50, -60 ), ( 60, -50 ) ]
    ]


downLeftCurve : Path
downLeftCurve =
    curvedLine ( -20, 60 ) ( -50, -60 ) 5


kanjiList : List Kanji
kanjiList =
    [ ichi, ni, san, yon, go, roku, nana, hachi, kyuu ]
