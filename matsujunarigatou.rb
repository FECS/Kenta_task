#!/usr/bin/env ruby
require 'open-uri'
require 'nkf'
class Matsujunarigatou

	def sayHello
		puts "Matsujun Thank You!!!"
	end

	def showGoogle
		puts NKF.nkf("-w",open("http://google.com/").read)
	end
end

kenta = Matsujunarigatou.new

kenta.sayHello
kenta.showGoogle
