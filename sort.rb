def sort(arr)
	sorted_list = []
	arr.each do |number|
	temp = 0
		arr.each do |number2|
			if number >= number2
				temp = number
			else
				temp = number2		
			end
		end
	sorted_list << temp
	end
	puts sorted_list
end

arr = [1,8,3,7,1,9,3]
sort(arr)