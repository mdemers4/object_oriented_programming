class Paperboy

	def initialize(name, experience, side, earnings )
		@name = name
		@experience = experience
		@side = side
	end

	def quota ()
		puts (@experience/2 + 50)
		return (@experience/2 + 50)
	end

	def deliver(start_address, end_address)
		quota_expected = quota()
		houses = (end_address - start_address)/2
		if houses <= quota_expected # 50
			under_quota_money = houses * 0.25
			total = under_quota_money - 2
			puts total
			return total
		else #houses >= quota_expected
			under_quota_money = houses * 0.25
			over_quota_money = (houses - quota_expected) * 0.5
			total = under_quota_money + over_quota_money
			puts total
			return total
		end

	end 

	def report(start_address, end_address)
		
		return "hi im #{@name}, I've delivered #{(end_address - start_address)/2} papers and I've earned #{deliver(start_address, end_address)} so far! "

	end
end

tommy = Paperboy.new("mitch", 0, "odd", nil)
tommy.quota # => 50
tommy.deliver(101, 220) # => 17.75
#tommy.earnings #=> 17.5
print tommy.report(101, 220) # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"










