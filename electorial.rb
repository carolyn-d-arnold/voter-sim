#Allows voters and politicians to create, list, update, and delete records.

require './person.rb'
require './voters.rb'
require './politicians.rb'
require './records.rb'

puts "Welcome to Voter Simulation"
puts "What would you like to do? Please select from the following."
puts "Options: (C)reate, (L)ist, (U)pdate, (D)elete"
case option = gets.chomp
when "C"
        puts "What would you like to create?"
    else
        puts "Oops, choose either C, L, U or D."
end

puts "Would you like to create a voter or politician?"
puts "Options: (P)olitician or (V)oter"
case option = gets.chomp
when "P" do
    get('./records.rb', == create_politician)

when "V" do
    get('./records.rb', == create_voter)
else
    puts "Oops, not again."
end
   

when "L" do
    get('./records.rb', results += Voter, Politician)
return results
    
else
    puts "Oops :/"
end

when "U"
    puts "Who would you like to update?"
    puts "Options: (N)ame, (Pa)rty_affiliation, (Po)litics?"
case option = gets.chomp
    
when "N", "Pa", "Po"
    get('./records.rb', == update_voter, update_politician)
    
else
    puts "Oops, try again."
end
       
when "D"
    puts "Who would like to delete?/n (V) or (P)?"
    case option = gets.chomp
        
when "V"
    puts "Are you sure? (Y)es or (N)o"
       if "Y"
    get('./records.rb', == delete_voter)
       if "N"
    puts "What would you like to do?"
else
    puts "Oops, :/"
    end
           
when "P"
    puts "Are you sure? (Y)es or (N)o"
        if "Y"
    get('./records.rb', == delete_politician)
       if "N"
    puts "What would you like to do?"
else
    puts "Oops, :/"
    end
end