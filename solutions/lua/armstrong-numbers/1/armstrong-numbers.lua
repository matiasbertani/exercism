local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)
    local armstrong = 0
    numbers = tostring(number)
    for i = 1, #numbers do
        armstrong = armstrong + numbers:sub(i,i)^ #numbers
    end
    return armstrong == number
end

return ArmstrongNumbers
