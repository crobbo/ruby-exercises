def stock_picker(array) 
    profit = Array.new()
    output = Array.new()
    array.each_with_index do |n, i|
        buys = Array.new(array.length-1-i, n)
        sells = array[i+1..(array.length-1)]
        require 'matrix'
        a = Matrix[buys]
        b = Matrix[sells]
        c = b - a
        if c.max === nil
            profit.push(0)
        else 
            profit.push(c.max)
        end

    end
    max_profit = profit.max
    index_of_best_buy = profit.index(max_profit)
    output.push(index_of_best_buy)
    max_sell_value = array[(index_of_best_buy+1), array.length].max
    index_of_best_sell = array.index(max_sell_value)
    output.push(index_of_best_sell)
    p output
end

stock_picker([17,3,6,9,15,8,6,1,10])

# ALTERNATIVE SOLUTION 1

# def stock_picker(arr)
#     arr
#       .map         
#       .with_index{|el, i| [el, i]}
#       .combination(2)
#       .max_by { |day1, day2| day2[0] - day1[0] }
#       .map(&:last)
#   end

  




# ALTERNATIVE SOLUTION 2

# Stock picker project

# stock_prices = [17,3,6,9,15,8,6,1,10]


# hash_prices = Hash.new
# stock_prices.each_with_index {|item, index| hash_prices["Day #{index}"] = item}
# arr = hash_prices.to_a
# arr = arr.permutation(2).to_a


# p sorted = arr.delete_if { |v| v[0][0] > v[1][0]}.delete_if {|v| 
# v[0][1] > v[1][1]
# }.sort_by {|v| v[1][1] - v[0][1] }.reverse
# puts

# print "The best day to buy is #{sorted[0][0][0]} and the best day to sell
# is #{sorted[0][1][0]} for a profit of #{sorted[0][1][1] - sorted[0][0][1]} "