function Factorize(x)
    # Initializing variables and arrays
    factors = [1]
    n = 5
    s = true

    # Handle 2 & 3
    if x & 1 == 0
        push!(factors, 2)
        while x & 1 == 0
            x >>= 1
        end
    end
    if x % 3 == 0
        push!(factors, 3)
        while x % 3 == 0
            x /= 3
        end
    end
    
    # Handle ≥5
    while x > 1
        if x % n == 0
            push!(factors, n)
            while x % n == 0
                x /= n
            end
        end
    
        if s
            n += 2
            s = false
        else
            n += 4
            s = true
        end
    end

    for p in factors
        if p != factors[end]
            print(" $p,")
        else
            print(" $p\n")
        end
    end
end

@timev Factorize(1518466178491)