describe "Iterators" do

  before(:each) do
    @arr = [1,2,3,4,5]
  end

  # select / FILTER!
  describe "#select" do
    it "returns an array where the condition is true" do
      expect(@arr.select {|num| num.even? }).to eq([2,4])
    end
  end

  # reject
  describe "#reject" do
    it "returns an array of values where the condition is false" do
     expect(@arr.reject {|num| num.even? }).to eq([1,3,5])
    end
  end

  # collect / map
  describe "#collect" do
    it "returns a new array with the results of the block" do
     expect(@arr.collect {|num| num}).to eq([1,2,3,4,5])
    end
  end

  # detect / find
  describe "#detect" do
    it "returns nil if not found" do
      expect(@arr.detect { |num| num / 3 == 2}).to eq(nil)
    end
    it "returns the first true result if found" do
     expect(@arr.detect { |num| num / 2 == 2}).to eq(4)
    end
  end

  # inject / reduce
  describe "#inject" do
    it "will apply a block to each value and return a single value based off the accumulator" do
      expect(@arr.inject { |num,n| num + n}).to eq(15)
    end
  end

  # partition
  describe "#partition" do
    it "returns an array with two subarrays with truthy and falsey values" do
      expect(@arr.partition { |num| num % 2 == 0}).to eq([[2,4],[1,3,5]])
    end
  end

  # sort
  describe "#sort" do
    it "sorts some data" do
     expect(@arr.sort {|a,b| b <=> a}).to eq([5,4,3,2,1])
    end
  end

  # one?
  describe "#one" do
    it "returns true if only one item in the array passes a condition" do
      expect(@arr.one? {|num| num / 5 == 1}).to eq(true)
    end
  end

  # none?
  describe "#none" do
    it "returns true if none of items in the array pass a condition" do
      expect(@arr.none? {|num| num / 7 == 1}).to eq(true)
    end
  end
end