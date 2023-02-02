primes = [2]
i = 0
m = 3
input = gets
input = input.to_s.to_i
elapsed = Time.measure do
while m < input
    if primes[i] <= (Math.sqrt(m)).floor
        if i < primes.size && m % primes[i] != 0 
            i += 1
        elsif i == primes.size
            primes.push(m)
            i = 0
            m += 1
        else
            m += 1
            i = 0
        end
    else
        primes.push(m)
        i = 0
        m += 1
    end
end

end
puts elapsed








    
    


