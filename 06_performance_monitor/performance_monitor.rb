def measure(input=1)
	start = Time.now
	input.times {yield}
	(Time.now - start) / input
end