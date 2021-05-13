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

    it "will convert matrix to transposed version" do
        expect(my_transpose(arr1)).to eq(arr1.transpose)
    end    
end
