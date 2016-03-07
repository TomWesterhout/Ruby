def echo (input)
	input
end

def shout (input)
	input.upcase
end

def repeat (input, number=2)
	[input] * number * " "
end

def titleize (input)
	if input.split.length == 1 
		input.capitalize
	else
		little_words = ["a", "an", "and", "the", "or", "for", "of", "nor", "over"]
		result = input.split.each_with_index.map do |word, index|
			if little_words.include?(word) && index > 0
				word
			else
				word.capitalize
			end
		end
		result.join(" ")
	end
end

def first_word (input)
	array = input.split
	array[0]
end

def start_of_word (input, number)
	result = input.split("").each_with_index.map do |letter, index|
		if index <= (number -1)
			letter
		end
	end
	result.join
end