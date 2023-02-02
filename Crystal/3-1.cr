primes, factors = [2], [1]
i, m = 0, 3

print "#: "
input = gets.to_s.to_i
inputcopy = input
input = (input/2).floor.to_i
elapsed = Time.measure do
while input >= m
    if primes[i] <= (Math.sqrt(m)).floor
        if i < primes.size && !m.divisible_by?(primes[i])
            i += 1
        elsif i == primes.size
            primes.push(m)
            i = 0
            m += 2
        else
            m += 2
            i = 0
        end
    else
        primes.push(m)
        i = 0
        m += 2
    end
end

while i < primes.size
    if inputcopy.divisible_by?(primes[i])
        factors.push(primes[i])
    end
    i += 1
end

if factors.empty?
    factors.push(inputcopy)
end
end
puts "factors: #{factors}", elapsed.total_milliseconds