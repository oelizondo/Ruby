class Account
	attr_accessor :name, :address, :email, :notes

	def assign_values(values)
		values.each do |key|
			self.send(key)
		end
	end
end
user_info = {
		name: 'Matt',
		address: '312 Random St.',
		email: 'oscar@test.com',
		notes: 'dasdasd'
}

account = Account.new
account.assign_values(user_info)

puts account.inspect