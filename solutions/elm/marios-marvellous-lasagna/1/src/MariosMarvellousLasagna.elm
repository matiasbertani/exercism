module MariosMarvellousLasagna exposing (remainingTimeInMinutes)

-- TODO: define the remainingTimeInMinutes function
remainingTimeInMinutes : Int -> Int -> Int
remainingTimeInMinutes  layers minutesInOven =
    let 
        remainingMinutesInOven = 40 - minutesInOven
        minutesPerLayer = layers * 2
    in 
        remainingMinutesInOven + minutesPerLayer