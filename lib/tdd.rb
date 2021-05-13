def my_uniq(arr)
    new_arr = []
    arr.each do |num|
        new_arr << num if !new_arr.include?(num)
    end
    new_arr
end

