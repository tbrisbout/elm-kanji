module Kanji exposing (Kanji, kanjiList)

import Collage exposing (..)
import Draw exposing (hLine, vLine)


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


kanjiList =
    [ ichi, ni, san, yon, go ]
