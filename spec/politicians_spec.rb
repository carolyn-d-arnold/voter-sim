require './politicians.rb'

describe Politician do
    
    it "is created with a name and party affiliation" do
        politician = Politician.new("Don Juan", "Democrat")
        expect(politician).to be_a(Politician)
    end
    it "can report its name" do
        politician = Politician.new("Don Juan", "Democrat")
        expect(politician.name).to eq("Don Juan")
    end
    it "can report its party affiliation" do
        politician = Politician.new("Don Juan", "Democrat")
        expect(politician.party_affiliation).to eq("Democrat")
    end
end 