#Main page that allows voters and politicians to create, list, update, and delete records.

require './records.rb'

class Main
  def initialize
    @records = Records.new
  end

#Opening greeting and menu options.
puts "Welcome to Voter Simulation!"
puts "Voter Simulation gives you the ability to create, list, update, and delete records.\n So, let's begin. Selecting from the following, what would you like to do?"
puts "Options: (C)reate, (L)ist, (U)pdate, (D)elete or (E)nd records?"
  case request = gets.chomp.upcase.strip
      
    when "C"
      create_request
    when "L"
      puts @records.list
    when "U"
      update_request
    when "D"
      delete_request
    when "E"
      return_request
    else
      puts "Oops :/ Try again."
  end

def create_request
    puts "Would you like to create a (V)oter or (P)olitician?"
    case request = gets.chomp.upcase.strip
        
      when "V"
       puts "Name?"
       name = gets.chomp.upcase.strip
       puts "Politics?"
       puts "(L)iberal, (C)onservative, (T)ea Party, (S)ocialists, or (N)eutral."
       politics = gets.chomp.upcase.strip
      
    case politics
      when "L"
       politics = "Liberal"
      when "C"
       politics = "Conservative"
      when "T"
       politics = "Tea Party"
      when "S"
       politics = "Socialists"
      when "N"
       politics = "Neutral"
      else
       puts "Oops! That options is not available. Let's try again."
      end     
        
      @record.create_voter(name, politics)
    end
    
    when "P"
       puts "Name?"
       name = gets.chomp.upcase.strip
       puts "Party_Affiliation?"
       puts "(D)emocrat or (R)epublican?"
       party_affiliation = gets.chomp.upcase.strip
      
    case party_affiliation
      when "D"
       party_affiliation = "Democrat"
      when "C"
       party_affiliation = "Republican"
      else
       puts "Oops! That options is not available. Let's try again."
    end
        
      @record.create_politician(name, party_affiliation)
    end
end