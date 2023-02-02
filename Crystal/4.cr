a = 100
b = 100
product = 0
palindromes = Array(Int32).new
elapsed = Time.measure do
while a < 1000
    while b < 1000
        product = a * b
        #product_reverse = product.to_s.reverse.to_i
        product_string = product.to_s
        if product_string == product_string.reverse
            palindromes.push(product)
        end
        b += 1
    end
    a += 1
    b = a - 1
end

end
puts palindromes.max, elapsed