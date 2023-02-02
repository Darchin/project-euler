primes = [2]
i = 0
m = 3
elapsed = Time.measure do
while primes.size <= 10_000
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
end

puts primes[10_000]








    
    


