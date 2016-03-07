def translate input

	alphabet = ("a".."z").to_a
	vowel = %w(a e u i o)
	consonant = alphabet - vowel
	qu = "qu"
	sch = "sch"
	single_words = input.split(' ')

	result = single_words.map do |word|

		letters = word.split('')
		
		if word.include?("qu") && letters[0] == "q"
			word.delete("qu") + "quay"
		elsif word.include?("qu") && letters[0]
			word.delete(letters[0] + "qu") + letters[0] + "quay"
		elsif word.include?("sch")
			word.delete("sch") + "schay"
		elsif consonant.include?(letters[0]) && consonant.include?(letters[1]) && consonant.include?(letters[2])
			word.delete(letters[0] + letters[1] + letters[2]) + letters[0] + letters[1] + letters[2] + "ay"
		elsif consonant.include?(letters[0]) && consonant.include?(letters[1])
			word.delete(letters[0] + letters[1]) + letters[0] + letters[1] + "ay"
		elsif consonant.include?(letters[0])
			word.delete(letters[0]) + letters[0] + "ay"
		elsif vowel.include?(letters[0])
			word + "ay"
		end
	end

	result.join(' ')

end