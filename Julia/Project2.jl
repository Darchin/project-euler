#fibonacci(n::Integer) = n ≤ 2 ? one(n) : fibonacci(n-1) + fibonacci(n-2)
function FiboMultipleSum(max)
    Term1 = 1
    Term2 = 1
    Term3 = Term1 + Term2
    Term3Copy = Term3
    evenSum = 0
    while Term3 ≤ max
        Term3 % 2 == 0 ? evenSum += Term3 : evenSum += 0
        Term1 = Term2
        Term2 = Term3
        Term3 = Term1 + Term2
    end
    return evenSum
end

print(FiboMultipleSum(4e6))
        