sum, num = 0, 1

until num > 1000
    if (num % 100) != 0 && num > 100
        sum += 3
    end
    # hundreds
    case num - (num % 100)
    when 100
        sum += 10
    when 200
        sum += 10
    when 300
        sum += 12
    when 400
        sum += 11
    when 500
        sum += 11
    when 600
        sum += 10
    when 700
        sum += 12
    when 800
        sum += 12
    when 900
        sum += 11
    when 1000
        sum += 11
    end
    # tens
    if (11..19).includes?(num % 100)
        case num % 100
        when 11
            sum += 6
        when 12
            sum += 6
        when 13
            sum += 8
        when 14
            sum += 8
        when 15
            sum += 7
        when 16
            sum += 7
        when 17
            sum += 9
        when 18
            sum += 8
        when 19
            sum += 8
        end
    else
        case (num % 100) - (num % 10)
        when 10
            sum += 3
        when 20
            sum += 6
        when 30
            sum += 6
        when 40
            sum += 5
        when 50
            sum += 5
        when 60
            sum += 5
        when 70
            sum += 7
        when 80
            sum += 6
        when 90
            sum += 6
        end
        # ones
        case num % 10
        when 1
            sum += 3
        when 2
            sum += 3
        when 3
            sum += 5
        when 4
            sum += 4
        when 5
            sum += 4
        when 6
            sum += 3
        when 7
            sum += 5
        when 8
            sum += 5
        when 9
            sum += 4
        end
    end
    num += 1
end

puts sum