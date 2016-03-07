class Timer

	attr_accessor :seconds

	def initialize(input=0)
		@seconds = input
	end

	def time_string
		sec = @seconds%60
		min = (@seconds%3600)/60
		hour = @seconds/3600
		sprintf("%02d:%02d:%02d", hour, min, sec)
	end

end