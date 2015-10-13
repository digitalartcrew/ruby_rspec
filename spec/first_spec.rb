describe "Startin" do 
	describe "something" do
		it "does something that passes" do
			expect(5).to eq(5)
		end

		it "does something that fails" do
			expect(5).to eq(3)
		end

		it "does something that is pending", pending: true do
			expect(5).to eq(3)
		end

		xit "does something that is pending because we used xit" do
			expect(5).to be < 3 #this will be pending
		end
	end
end
