local Hamming = {}

function Hamming.compute(a,b)

  if #a ~= #b then
    return -1
  end

  local hamming = 0
  
  for i=1, #a do
    a_char = a.sub(a, i, i)
    b_char = b.sub(b, i, i)
    if  a_char ~= b_char then
      hamming = hamming + 1
    end
  end
  return hamming
end

return Hamming
