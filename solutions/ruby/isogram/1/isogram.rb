module  Isogram
    def self.isogram?(input)
      input = input.downcase.gsub(/[\s-]/, "")

      amount_of_chars = input.length
      amount_of_unique_chars = input.split("").to_set.length

      amount_of_chars == amount_of_unique_chars
    end
end