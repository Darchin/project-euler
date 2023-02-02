primes = [2]
i, m, sum = 0, 3, 0_i64

while m < 2e6
    if primes[i] <= (Math.sqrt(m)).floor
        if i < primes.size && m % primes[i] != 0 
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

primes.each do |x|
    sum = sum + x
end

puts sum