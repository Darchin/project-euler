num, current, max = 1, 1, 0
pre = num
number = 0
while pre < 1_000_000
    until num == 1
        while num.to_i64.even?
            num = num.to_i64 / 2
            current += 1
        end
        if num == 1
            if current > max
                max = current
                number = pre
                #puts max
            end
            current = 1
        else
            num = 3*num + 1
            current += 1
        end
    end
    pre += 1
    num = pre
end

puts number