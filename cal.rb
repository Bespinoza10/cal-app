#!/usr/bin/env ruby
 
month = ARGV[0]
year = ARGV[1]
# puts `cal #{month} #{year}`

m = Month.new(month, year)
puts m.to_s