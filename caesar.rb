def caesar(word,num)
	output = ""
	word.each_byte do |c|
		temp = getnewasci(c,num)
		output+= temp.chr
	end
	return output
end

def getnewasci(c,n)
	num = n.to_i

	while num>25
		num-=26
	end



	if c >64 && c < 91 #uppercase
		if c+num>90
			return 64+c+num-90
		else
			return c+num
		end

	else
		if c+num>122
			return 96+c+num-122
		else
			return c+num
		end
	end
end





input = gets.chomp
num = gets.chomp
puts caesar(input,num)




