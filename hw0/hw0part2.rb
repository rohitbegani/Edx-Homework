def hello(name)
	return "Hello, #{name}"
end

def starts_with_consonant?(s)
	if s == '' || s.class != String || s.match(/\W/)
		return false
	end
	a = s.to_s.downcase
	if a[0].match(/[^aeiou]/)
		return true
	else
		return false
	end
end

puts starts_with_consonant?("@$")

def binary_multiple_of_4?(s)
	s = s.to_s
	return false if s == ''
	return false if s.match(/[^01]/)
    return (s.to_i(2)%4 == 0)
end
