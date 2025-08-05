module MariosMarvellousLasagna exposing (remainingTimeInMinutes)

remainingTimeInMinutes : Int -> Int -> Int
remainingTimeInMinutes  layers minutesInOven =
    let 
        remainingMinutesInOven = 40 - minutesInOven
        preparationTimeInMinutes = layers * 2
    in 
        remainingMinutesInOven + preparationTimeInMinutes