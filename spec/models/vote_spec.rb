describe Vote do 
  describe "validations" do
    before do
      vote_up = Vote.new(value: 1)
      vote_down = Vote.new(value: -1)
      vote_nil =  Vote.new(value: 0)
    end  
    it "only allows -1 or 1 as values" do
      expect(vote_up.valid?).to eq(true)
      expect(vote_down.valid?).to eq(true)
      expect(vote_nil.valid?).to eq(false)
    end
  end   
end