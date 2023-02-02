function sum(a, b)
    sum = 0
    num = 0
    for i = a:b
        num += 1
        if num % 3 == 0
            sum += num
            continue
        elseif num % 5 == 0
            sum += num
            continue
        end
    end
    return sum
end

print(sum(1,999))