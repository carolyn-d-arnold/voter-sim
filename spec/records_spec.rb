require './records.rb'

describe Records do
    it "can create a voter and add to a voter's array" do
        records = Records.new
        records.create_voter("Jane Doe", "Liberal")
        
        expect(records.voters.count).to eq(1)
    end
    
    it "can create a politician and add to a politician's array" do
        records = Records.new
        records.create_politician("Susie Que", "Democrat")
        
        expect(records.politicians.count).to eq(1)
    end
    
    it "can list all voters and politicians" do
        records = Records.new
        records.create_voter("Jane Doe", "Liberal")
        records.create_politician("Susie Que", "Democrat")
        
        expected_results = "Voter, Jane Doe, Liberal\nPolitician, Susie Que, Democrat\n"
        expect(records.list).to eq(expected_results)
    end
     
    it "can search for a voter by name" do
        records = Records.new
        
        records.create_voter("Jane Doe", "Liberal")
        records.create_voter("Jess Lee", "Socialist")
        records.create_voter("Jay Zee", "Neutral")
        
        index_for_existing_voter = records.search_voter("Jess Lee")
        index_for_nonexisting_voter = records.search_voter("Lin Ming")
        
        expect(index_for_existing_voter).to eq(1)
        expect(index_for_nonexisting_voter).to eq(nil)
      end
    
   it "can search for a politician by name" do
       records = Records.new
        
       records.create_politician("Susie Que", "Democrat")
       records.create_politician("Jess Lee", "Republican")
       records.create_politician("Jay Zee", "Democrat")
        
       index_for_existing_politician = records.search_politician("Jess Lee")
       index_for_nonexisting_politician = records.search_politician("Stacy McVee")
        
       expect(index_for_existing_politician).to eq(1)
       expect(index_for_nonexisting_politician).to eq(nil)
   end
    
   it "can update a voter" do
       records = Records.new
       
       records.create_voter("Jess Lee", "Socialist")
       records.create_voter("Jay Zee", "Neutral")
       
       records.update_voter("Jess Lee", "Jamie Sams", "Liberal")
       
       expect(records.voters[0].name).to eq("Jamie Sams")
       expect(records.voters[0].politics).to eq("Liberal")  
   end
    
   it "can update a politician" do
       records = Records.new
       
       records.create_politician("Susie Que", "Democrat")
       records.create_politician("Jay Zee", "Democrat")
       
       records.update_politician("Susie Que", "Sally Mae", "Republican")
       
       expect(records.politicians[0].name).to eq("Sally Mae")
       expect(records.politicians[0].party_affiliation).to eq("Republican") 
   end
    
   it "can delete a voter" do
       records = Records.new
       
       records.create_voter("Jess Lee", "Socialist")
       records.create_voter("Jay Zee", "Neutral")
            
       expect(records.voters.count).to eq(2)
       
       records.delete_voter("Jay Zee")
       
       expect(records.voters.count).to eq(1)
       expect(records.search_voter("Jay Zee")).to eq(nil)
   end
    
   it "can delete a politician" do
       records = Records.new
       
       records.create_politician("Jay Zee", "Democrat")
       records.create_politician("Jane Doe", "Republican")
            
       expect(records.politicians.count).to eq(2)
       
       records.delete_politician("Jane Doe")
       
       expect(records.politician.count).to eq(1)
       expect(records.search_politician("Jane Doe")).to eq(nil)
   end
end