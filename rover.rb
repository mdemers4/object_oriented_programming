class Rover

	def initialize (x_cordination, y_cordination, direction)
		@x_cordination = x_cordination
		@y_cordination = y_cordination
		@direction = direction
	end

	def read_instructions (list_of_instructions)
		list_of_instructions.upcase.each do |letter|
			if letter == 'M'
				@x_cordination 
			elsif letter == 'L'
				turn_left()
			elsif letter == 'R'
				turn_right()
			#else
				
			end
		end
	end
	def turn_left()
		if @direction == 'N'
			return @direction = 'W'
		end
		elsif @direction == 'W'
			return @direction = 'S'
		end
		elsif @direction == 'S'
			return @direction = 'E'
		end
		elsif @direction == 'E'
			return @direction = 'N'
		else 
			puts "Error, direction not found"
		end
	end
	def turn_right()
		if @direction == 'N'
			return @direction = 'E'
		end
		elsif @direction == 'E'
			return @direction = 'S'
		end
		elsif @direction == 'S'
			return @direction = 'W'
		end
		elsif @direction == 'W'
			return @direction = 'N'
		else 
			puts "Error, direction not found"
		end
	end
	def move_forward()
		location = @x_cordination, @y_cordination
		if @direction == 'N'
			return @x_cordination,@y_cordination+1
		if @direction == 'E'
			return @x_cordination+1,@y_cordination			
		if @direction == 'S'
			return @x_cordination,@y_cordination-1
		if @direction == 'W'
			return @x_cordination-1,@y_cordination

end

rover = Rover.new(0,0,'N')
puts rover.turn_left()


# and object has name, states and behaviour