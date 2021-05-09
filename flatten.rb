a = [1,2, [3], [[4],[7]], [[5], 6], [[[[8]]]]]
# a = [1, [1, [1, [1] ] ] ] 
def flat(a)
	new_arr = []
	a.each do |el|
		if el.is_a? Array
			el.each do |n|
				if el.is_a? Array
					a << n
				else
					new_arr << n
				end
			end
		else
			new_arr << el	
		end
	end
	p new_arr
end

flat(a)


# def factorial(n)
# 	if n <= 1
# 		n
# 	else
# 		n * factorial(n-1)
# 	end
# end

# p factorial(3)