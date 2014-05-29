#!/usr/bin/env ruby
require 'open-uri'
require 'nkf'
require 'json'
class Matsujunarigatou

	def sayHello
		puts "Matsujun Thank You!!!"
	end

	def showGoogle
		puts NKF.nkf("-w",open("http://google.com/").read)
	end

	def showAnimeJson
		json = NKF.nkf("-w",open('http://animemap.net/api/table/tokyo.json').read)
		#json = JSON.parser.new(html)
		puts json
	end

	def showOneWeekFriends
		html = NKF.nkf("-w",open('http://animemap.net/api/table/tokyo.json').read)
		json = JSON.parser.new(html)
		hash = json.parse()
		response = hash['response']
		items = response['item']

		items.each do |item|
			if item['title']=='一週間フレンズ。'
				item.each do |key,value|
					puts value
				end
			end
		end
		
	end

end

kenta = Matsujunarigatou.new

kenta.sayHello
#kenta.showGoogle
kenta.showOneWeekFriends
