require './person.rb'

describe Person do
    it "is created with a name" do
        person = Person.new("Jane Doe")
        expect(person).to be_a(Person)
    end
        it "can report a name" do
        person = Person.new("Jane Doe")
        expect(person.name).to eq("Jane Doe")
    end
end
