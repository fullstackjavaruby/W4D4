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
        arr.each_with_index do |col, i2|
            new_arr[i2] << row[i2]
        end
    end
    new_arr
end


