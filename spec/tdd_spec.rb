require "tdd"
  
describe "#my_uniq" do 
    it "returns unique elements of array" do 
        expect(my_uniq([1,2,1,3,3])).to eq([1,2,3])
    end
end

describe "#two_sum" do
    it "finds all pairs of positions where elements sum to zero" do
        expect(two_sum([-1,0,2,-2,1])).to eq([[0,4], [2,3]])
    end
end

describe "#my_transpose" do 
    let(:arr1) {[
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]  
    ]}
    let(:arr2) {[
        [a, b, c]
    ]}
    let(:arr3) {[
        [a, nil, nil],
        [b, nil, nil],
        [c, nil, nil]
    ]}

    it "will convert matrix to transposed version" do
        expect(my_transpose(arr1)).to eq(arr1.transpose)
    end

    # it "will put nil in place where there is not enough spaces to fill a square array" do
    #     expect(my_transpose(arr2)).to eq(arr3)
    # end
end

describe "#stock_picker" do
    let(:arr1) {[5,8,11,17,21,23,20]}
    let(:arr2) {[20,19,18,14,10,8,4]}
    let(:arr3) {[15,20,8,9,13,8,20]}
    # most prof to sell is max and most prof to buy is min
    it "outputs most profitable pair of days to buy and sell" do
        expect(stock_picker(arr1)).to eq([[0,5]]) # days
    end

    it "outputs most profitable pair of days to buy and sell pt. 2" do
        expect(stock_picker(arr3)).to eq([[2,6],[5,6]]) # days
    end

    # only decrease in price edge case where no profit

    it "considers edge case where profit is only decreasing" do
        expect(stock_picker(arr2)).to eq("Should not buy") # days
    end
end