def reverser
	yield.split.map {|word| word.reverse}.join(" ")
end

def adder (input=1)
	yield + input
end

def repeater (input=1)
	input.times { yield}
end