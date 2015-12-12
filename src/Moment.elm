module Moment (getCurrent, Moment, emptyMoment, format, formatString, add, subtract, from, isBefore, isAfter) where

{-|
A Moment.js inspired library
-}

import Native.Moment
-- hack for making sure MomentJS.js is included
import Native.MomentJS


type alias Moment =
    { years : Int
    , months : Int
    , date : Int
    , hours : Int
    , minutes : Int
    , seconds : Int
    , milliseconds : Int
    }

{-| A moment with everything set to 0
-}
emptyMoment =
    { years = 0
    , months = 0
    , date = 0
    , hours = 0
    , minutes = 0
    , seconds = 0
    , milliseconds = 0
    }


{-| Get the current the moment
-}
getCurrent : () -> Task x Moment
getCurrent =
    Native.Moment.getCurrent


{-| Call the default `Moment.js` format method
-}
format : Moment -> String
format =
    Native.Moment.format

{-| Takes a format string and returns the moment as a formatted
by that string
-}
formatString : String -> Moment -> String
formatString =
    Native.Moment.formatString

{-| Add the second moment to the first
-}
add : Moment -> Moment -> Moment
add =
    Native.Moment.add

{-| Subtract the second moment from the first
-}
subtract : Moment -> Moment -> Moment
subtract =
    Native.Moment.subtract

{-| Returns a string in words of how long it is from the first
moment to the second
-}
from : Moment -> Moment -> String
from =
    Native.Moment.from


{-| Returns `True` if the first `Moment` is before the second
-}
isBefore : Moment -> Moment -> Bool
isBefore =
    Native.Moment.isBefore


{-| Returns `True` if the first `Moment` is after the second
-}
isAfter : Moment -> Moment -> Bool
isAfter =
    Native.Moment.isAfter
