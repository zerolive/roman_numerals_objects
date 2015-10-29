class Principal

	def self.build number
		return Five.build(number)
	end

end

class Five

	def self.build number
		p "Five"
		return Four.build(number+5)
	end

end

class Four

	def self.build number
		p "Four"
		return Three.build(number+4)
	end

end

class Three

	def self.build number
		p "Three"
		return Two.build(number+3)
	end

end

class Two

	def self.build number
		p "Two"
		return One.build(number+2)
	end

end

class One
	p "One"
	def self.build number
		return number+1
	end

end

p Principal.build(0)