number_list = [*1..100]
s_sum = 0
sum = 0

number_list.each do |x|
    s_sum = s_sum + x ** 2
    sum = sum + x
end

puts (sum ** 2 - s_sum)

