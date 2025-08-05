defmodule Secrets do

  def secret_add(secret), do: fn number -> number + secret end

  def secret_subtract(secret), do: fn number -> number - secret end

  def secret_multiply(secret), do: fn number -> number * secret end

  def secret_divide(secret), do: fn number -> floor(number/secret) end

  def secret_and(secret), do: fn number -> Bitwise.band(secret, number) end

  def secret_xor(secret), do: fn number -> Bitwise.bxor(secret, number) end

  def secret_combine(function1, function2), do: fn number -> function2.(function1.(number)) end

end