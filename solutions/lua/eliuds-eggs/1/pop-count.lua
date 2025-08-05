local PopCount = {}

function PopCount.egg_count(number)
        local _,count = string.gsub(decimalToBinary(number), "1", "")
        return count

end

function decimalToBinary(num)
    if num == 0 then return "0" end
    return decimalToBinary(math.floor(num / 2)) .. tostring(num % 2)
end

return PopCount
