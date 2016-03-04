class Calculator
  def self.operate arg1, arg2, operand
    arg1.send(operand, arg2)
  end
end