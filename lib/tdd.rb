def my_uniq(arr)
    new_arr = []
    arr.each do |num|
        new_arr << num if !new_arr.include?(num)
    end
    new_arr
end

def two_sum(arr)
    new_arr = []
    arr.each_with_index do |ele1, idx1|
        arr.each_with_index do |ele2, idx2|
            if idx2 > idx1 && ele2 + ele1 == 0
                new_arr << [idx1, idx2]
            end
        end
    end
    new_arr
end

def my_transpose(arr)
    new_arr = Array.new(arr.length) {Array.new([])}
    arr.each_with_index do |row, i1|
        row.each_with_index do |col, i2|
            new_arr[i2] << row[i2]
        end
    end
    new_arr
end

def stock_picker(arr)
    stock_profit = Hash.new {|h,k| h[k] = []}
    arr.each_with_index do |buy, buy_day|
        arr.each_with_index do |sell, sell_day|
            if sell_day > buy_day
                stock_profit[sell-buy] << [buy_day, sell_day]
            end
            # stock_profit[buy_day] << sell-buy
        end
    end
    p stock_profit
    if !stock_profit.keys.any? {|n| n > 0}
        return "Should not buy"
    else
        stock_values = stock_profit.sort_by {|k,v| k}
        return stock_values[-1][-1]
    end
end