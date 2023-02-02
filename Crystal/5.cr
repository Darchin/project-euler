def prime(range)
    i = 0
    m = 3
    primes = [2]
    while m < range
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
    primes
end

prime_list = prime(20)
number_list = [*1..20]
factor_list = Array(Int32).new
i, f, max, current = 0, 0, 0, 0

while f < prime_list.size
    while i < 20
        current_number = number_list[i]
        while current_number % prime_list[f] == 0
            current += 1
            current_number = current_number / prime_list[f]
        end
        if current > max
            max = current
        end
        current = 0
        i += 1
    end
    factor_list.push(max)
    max = 0
    f += 1
    i = 0
end

factor_list_hash = Hash.zip(prime_list, factor_list)
result = 1
factor_list_hash.each do |base, exp|
    result = result * (base ** exp)
    puts result
end
