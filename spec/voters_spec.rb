#open with a welcome greeting
require './voters.rb'

describe Voter do
    
    it "is created a name and politics" do
        voter = Voter.new("Susie Que", "Neutral")
        expect(voter).to be_a(Voter)
    end
    it "can report a name" do
        voter = Voter.new("Susie Que", "Neutral")
        expect(voter.name).to eq("Susie Que")
    end
    it "can report a politics" do
        voter = Voter.new("Susie Que", "Neutral")
        expect(voter.politics).to eq("Neutral")
    end
end