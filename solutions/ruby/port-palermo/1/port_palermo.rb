module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE
  
  def self.get_identifier(city)
    city[...4].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    if ship_identifier.to_s.include? "OIL" then :A
    elsif ship_identifier.to_s.include? "GAS" then :A
    else :B
    end
  end
end
