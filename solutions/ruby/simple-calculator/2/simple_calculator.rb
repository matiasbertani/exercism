class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  class UnsupportedOperation < StandardError; end

  def self.calculate(first_operand, second_operand, operation)
    if not (first_operand.is_a? Integer and second_operand.is_a? Integer)
      raise ArgumentError
    elsif not ALLOWED_OPERATIONS.include? operation
      raise UnsupportedOperation
    end
    begin
      complete_operation = "#{first_operand} #{operation} #{second_operand}"
      result = eval(complete_operation)
      "#{complete_operation} = #{result}"
    rescue ZeroDivisionError
      "Division by zero is not allowed."
    end
  end

end
