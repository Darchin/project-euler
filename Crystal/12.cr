j, divisors, max, sum, num = 1, 0, 0, 1, 1
elapsed = Time.measure do
until max > 500
    sum = (1..j).sum
    unless sum.even?
        j += 2
        sum = (1..j).sum
    end
    until num > Math.sqrt(sum)
        if sum.divisible_by?(num)
            divisors += 2
        end
        num += 1
    end
    if divisors > max
        max = divisors
        puts max
    end
    divisors, num = 0, 1
    j += 1
end
end

puts sum, elapsed.total_milliseconds
