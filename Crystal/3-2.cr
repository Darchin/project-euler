primes = [2,3]

m = 4
i = 0
elapsed = Time.measure do
while m < 2_000_00
        if i < primes.size && m % primes[i] != 0 
            i += 1
        elsif i == primes.size
            primes.push(m)
            i = 0
            m += 1
        elsif m % primes[i] == 0
            m += 1
            i = 0
        end
end
end
puts elapsed








    
    


