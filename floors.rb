class Floors
  def self.calculate(input)
    input.split('').inject(0) do |floors, command|
      floors += 1 if command == "("
      floors -= 1 if command == ")"
      floors
    end
  end
end
