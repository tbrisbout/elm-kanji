module Kanji exposing (Kanji, kanjiList)

import Collage exposing (..)
import Draw exposing (hLine, vLine, curvedLine)


type alias Kanji =
    List Path


half : Float -> Float
half x =
    x / 2


almost : Float -> Float
almost x =
    if x < 0 then
        x + 20
    else
        x - 20


imperfect : Float -> Float
imperfect x =
    if x < 0 then
        x + 10
    else
        x - 10


maxTop : number
maxTop =
    100


maxBottom : number
maxBottom =
    -100


maxRight : number
maxRight =
    100


maxLeft : number
maxLeft =
    -100


ichi : Kanji
ichi =
    [ hLine maxLeft maxRight 0
    ]


ni : Kanji
ni =
    [ hLine (almost maxLeft) (almost maxRight) (half maxTop)
    , hLine maxLeft maxRight (half maxBottom)
    ]


san : Kanji
san =
    [ hLine maxLeft maxRight (almost maxTop)
    , hLine (almost maxLeft) (almost maxRight) 0
    , hLine maxLeft maxRight (almost maxBottom)
    ]


yon : Kanji
yon =
    [ vLine maxTop maxBottom maxLeft
    , hLine maxLeft maxRight maxTop
    , vLine maxTop maxBottom maxRight
    , path [ ( -20, 100 ), ( -30, 50 ), ( -50, 0 ), ( -80, -50 ) ]
    , path [ ( 20, 100 ), ( 20, -20 ), ( 30, -30 ), ( 90, -30 ) ]
    , hLine maxLeft maxRight maxBottom
    ]


go : Kanji
go =
    [ hLine -60 60 (almost maxTop)
    , segment ( -10, (almost maxTop) ) ( -40, (almost maxBottom) )
    , hLine -60 (half maxRight) 0
    , vLine 0 (almost maxBottom) (half maxRight)
    , hLine (almost maxLeft) (almost maxRight) (almost maxBottom)
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


juu : Kanji
juu =
    [ hLine -60 60 0
    , vLine 60 -80 0
    ]


kuchi : Kanji
kuchi =
    [ vLine maxTop maxBottom maxLeft
    , hLine maxLeft maxRight maxTop
    , vLine maxTop maxBottom maxRight
    , hLine maxLeft maxRight (imperfect maxBottom)
    ]


hi : Kanji
hi =
    [ vLine maxTop maxBottom -60
    , hLine -60 60 maxTop
    , vLine maxTop maxBottom 60
    , hLine -60 60 0
    , hLine -60 60 (imperfect maxBottom)
    ]


tsuki : Kanji
tsuki =
    [ curvedLine ( -60, maxTop ) ( -80, maxBottom ) 8
    , hLine -60 60 maxTop
    , vLine maxTop maxBottom 60
    , hLine -60 60 50
    , hLine -60 60 0
    , hLine 60 40 maxBottom
    ]


ta : Kanji
ta =
    [ vLine maxTop maxBottom maxLeft
    , hLine maxLeft maxRight maxTop
    , vLine maxTop maxBottom maxRight
    , vLine maxTop maxBottom 0
    , hLine maxLeft maxRight 0
    , hLine maxLeft maxRight (imperfect maxBottom)
    ]


me : Kanji
me =
    [ vLine maxTop (imperfect maxBottom) -60
    , hLine -60 60 maxTop
    , vLine maxTop (imperfect maxBottom) 60
    , hLine -60 60 40
    , hLine -60 60 -20
    , hLine -60 60 (almost maxBottom)
    ]


furui : Kanji
furui =
    [ hLine (almost maxLeft) (almost maxRight) (half maxTop)
    , vLine maxTop 0 0
    , vLine 0 -65 -60
    , hLine -60 60 0
    , vLine 0 -65 60
    , hLine -60 60 -60
    ]


ware : Kanji
ware =
    [ hLine -60 60 80
    , segment ( -10, 80 ) ( -40, 10 )
    , hLine -60 50 50
    , vLine 50 10 50
    , hLine -80 80 10
    , vLine -10 -65 -60
    , hLine -60 60 -10
    , vLine -10 -65 60
    , hLine -60 60 -60
    ]


downLeftCurve : Path
downLeftCurve =
    curvedLine ( -20, 60 ) ( -50, -60 ) 5


kanjiList : List Kanji
kanjiList =
    [ ichi, ni, san, yon, go, roku, nana, hachi, kyuu, juu, kuchi, hi, tsuki, ta, me, furui, ware ]
