class MyClass
  def my_method
    @v = 1
  end
end

o = MyClass.new
puts o.class
o.my_method
puts o.instance_variables

puts MyClass.ancestors

# def generic_methods(code)
#   code.call
#   'hello :D'
# end

# puts generic_methods(lambda { puts 2 * 3 })

# def another_g_m
#   yield
#   puts 'hello world'
# end

# puts another_g_m { puts "hello worlderino" }