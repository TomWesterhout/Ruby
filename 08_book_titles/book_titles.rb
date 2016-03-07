class Book
	attr_accessor :title
	def title= (input)
		exceptions = ["the", "a", "an", "and", "in", "of"]
		words = input.split(' ')
		result = words.map do |word|
			if exceptions.include?(word)
				word
			else
				word.capitalize
			end
		end
		result[0].capitalize!
		@title = result.join(' ')
	end
end