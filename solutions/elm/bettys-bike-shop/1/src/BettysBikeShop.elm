module BettysBikeShop exposing (poundsToString, penceToPounds)

import String


penceToPounds pence =
    toFloat pence / 100


poundsToString pounds =
    "£" ++ String.fromFloat pounds
