class Rover

	def initialize (x_cordination, y_cordination, direction)
		@x_cordination = x_cordination
		@y_cordination = y_cordination
		@direction = direction
	end


	def read_instructions (x_max, y_max, list_of_instructions)
		if @x_cordination <= x_max || @y_cordination <= y_max
			
			list_of_instructions.upcase.split("").each do |letter|
				
				if letter == 'M'
					move_forward() 

				elsif letter == 'L'
					turn_left()

				elsif letter == 'R'
					turn_right()

				else
					return "Error in list of instructions"

				end
			end
		else
			return "Error: the rover has traveled outside of the boundary"
		end
		return @x_cordination, @y_cordination, @direction
	end


	def turn_left()
		if @direction == 'N'
			return @direction = 'W'

		elsif @direction == 'W'
			return @direction = 'S'

		elsif @direction == 'S'
			return @direction = 'E'

		elsif @direction == 'E'
			return @direction = 'N'
		else 
			puts "Error, direction not found"
		end
	end


	def turn_right()
		if @direction == 'N'
			return @direction = 'E'

		elsif @direction == 'E'
			return @direction = 'S'

		elsif @direction == 'S'
			return @direction = 'W'

		elsif @direction == 'W'
			return @direction = 'N'

		else 
			puts "Error, direction not found"
		end
	end


	def move_forward()

		if @direction == 'N'
			return @x_cordination , @y_cordination += 1

		elsif @direction == 'E'
			return @x_cordination += 1 , @y_cordination

		elsif @direction == 'S'
			return @x_cordination , @y_cordination -= 1

		elsif @direction == 'W'
			return @x_cordination -= 1 , @y_cordination

		else 
			puts "error with moving forward"
		end
	end
end

puts "enter the plateau size ex 5 5"
x_max, y_max = gets.split(" ")



puts "enter the rover location and direction ex. 1 2 N"
x_location, y_location, direction = gets.split(" ")
puts "insert a list of instructions of L, R, or M"
instructions = gets.chomp

puts "enter the rover 2 location and direction ex. 1 2 N"
rover2_x_location, rover2_y_location, rover2_direction = gets.split(" ")
puts "insert a list of instructions of L, R, or M"
rover2_instructions = gets.chomp



rover = Rover.new(x_location.to_i, y_location.to_i, direction)
rover2 = Rover.new(rover2_x_location.to_i, rover2_y_location.to_i, rover2_direction)

print rover.read_instructions(x_max.to_i, y_max.to_i, instructions)
puts
print rover2.read_instructions(x_max.to_i, y_max.to_i, rover2_instructions)
puts

# and object has name, states and behaviour






