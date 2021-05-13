require "tdd"
  
describe "#my_uniq" do 
    it "returns unique elements of array" do 
        expect(my_uniq([1,2,1,3,3])).to eq([1,2,3])
    end
end

