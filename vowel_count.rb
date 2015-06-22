
def count_vowels(input)
	vowels = ['a', 'e', 'i', 'o', 'u']
	counter = 0

	input.split('').each do |letter|
		if vowels.include?(letter)
			counter += 1
		end
	end
	puts counter
end

count_vowels('oooooooooo')