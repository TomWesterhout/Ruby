def ftoc(temperature)
	result = (temperature - 32) / 1.8
	result.ceil
end

def ctof(temperature)
	(temperature * 1.8) + 32
end