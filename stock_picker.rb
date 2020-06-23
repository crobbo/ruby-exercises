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