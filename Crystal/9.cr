a, b, check = 1, 2, false
c = 1000 - b - a

while check == false
    while a < b
        if a**2+b**2 == (1000-b-a)**2
            puts a, b, (1000-b-a)
            a = b
            check = true
        else
            a += 1
        end
    end
    b += 1
    a = 1
end