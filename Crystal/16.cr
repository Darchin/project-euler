require "big"
num = ((2.to_big_i)**1000).to_s.chars.map { |x| x.to_i }.sum
puts num