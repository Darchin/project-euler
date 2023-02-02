ft = 1
st = 2
lt = 2
sum = 0

while lt < 4_000_000
    if lt.even?
        sum += lt
    end
    lt = st + ft
    ft = st
    st = lt
end

puts sum


