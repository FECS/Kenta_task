#!/usr/bin/env ruby
kenta = "kenta desu"

class << kenta
	def sayHello
		puts "ハラケンタです"
	end
end

kenta.sayHello