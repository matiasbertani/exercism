local Darts = {}

function Darts.score(x, y)
    local dist = distance(x, y)
    if dist > 10 then
        return 0
    elseif dist > 5 then
        return 1
    elseif dist > 1 then
        return 5
    else
        return 10
    end
end

function distance(x, y)
    return (x^2 + y^2)^0.5
end

return Darts
