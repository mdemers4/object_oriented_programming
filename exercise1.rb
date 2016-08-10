class Cat
	def initialize(name, prefered_food, meal_time) 
=begin 
	so from here we make the instance variable inside of the method
	to make sure the variables are different per cat we use the @ 
=end
		@name = name
		@prefered_food = prefered_food
		@meal_time = meal_time
	end

	def eats_at(meal_time)
=begin
	This function takes in the time that the cat eats at and returns the proper time
=end

		if @meal_time >0 && @meal_time <= 11
			return "#{@meal_time}Am"
		elsif @meal_time == 0
			return "#{@meal_time+12}Am"
		else
			return "#{@meal_time-12}PM"
		end
	end

	def meow()
=begin
this function returns all three variables that have been made for that cat 
and returns all the information in a proper fashion			
=end

		eats = eats_at(@meal_time)
		return "hi my name is #{@name} and i eat #{@prefered_food} at #{eats}"
	end
end

cat1 = Cat.new("maddy", "tuna", 0)
puts cat1.meow


cat2 = Cat.new("john", "chicken", 15)
puts cat2.meow
puts cats.eats_at(12)





