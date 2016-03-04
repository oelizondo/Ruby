# file origin.rb
target  = "target.rb"
content = <<-RUBY
  puts "I'm the target!"
RUBY

File.open(target, "w+") do |f|
  f.write(content)
end