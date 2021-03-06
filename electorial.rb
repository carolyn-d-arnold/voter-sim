#Main page that allows voters and politicians to create, list, update, and delete records.

require './records.rb'

records = Records.new

#Opening greeting and menu options.

puts "Welcome to Voter Simulation!"
puts "Voter Simulation gives you the ability to create, list, update, and delete records.\n So, let's begin. Selecting from the following, what would you like to do?"
puts "Options: (C)reate, (L)ist, (U)pdate, (D)elete or (E)nd records?"
case option = gets.chomp.upcase
      
  when "C"
    puts "Would you like to create? options: (V)oter or (P)olitician"
      case option_create = gets.chomp.upcase
    
     when "V"
       puts "Name (First and Last)?"
     case name = gets.chomp.upcase
     
     when "V"
       puts "Voter Politics: (L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral"
       voter_politics = gets.chomp.upcase
         case voter_politics
      when "L"
        records.create_voter(name, "Liberal")
          puts "New voter record for [#{name}, Liberal] created."
      when "C"
        records.create_voter(name, "Conservative")
          puts "New voter record for [#{name}, Conservative] created."
      when "T"
        records.create_voter(name, "Tea Party")
          puts "New voter record for [#{name}, Tea Party] created."
      when "S"
        records.create_voter(name, "Socialist")
          puts "New voter record for [#{name}, Socialist] created."
      when "N"
        records.create_voter(name, "Neutral")
          puts "New voter record for [#{name}, Neutral] created."
      else
        puts "Oops! That options is not available. Let's try again."
      end
    
     when "P"
       puts "Name (First, Last)?"
         case name = gets.chomp.upcase
       
     when "P"
       puts "Party_Affiliation? options: (D)emocrat or (R)epublican"
         case party_affiliation = gets.chomp.upcase
    
      when "D"
        records.create_politician(name, "Democrat")
        puts "New party record for [#{name}, Democrat] created."
      when "R"
        records.create_politician(name, "Republican")
        puts "New party record for [#{name}, Republican] created."
      else
        puts "Oops! That options is not available. Let's try again."
      end
   end           
    
  when "L"
    puts records.list_voters()
    puts records.list_politicians()

  when "U"
    puts "Who would you like to update? options: Name (First, Last)"
      case option_update_name = gets.chomp.upcase
          
  when "U"
    person_update = records.find_person_by_name(update_name)    
      if person_update == nil
        puts "#{update_name} not found."
      else
        puts "Updated Name"
          case new_name = gets.chomp.upcase
              
   when "U"
            person_update.update_new(new_name)
      
      if person_update.is_a?(Voter)
        puts "Are updating your political affiliation options: (L)iberal,(C)onservative, (T)ea Party, (S)ocialist, or (N)eutral"
          case new_politics = gets.chomp.upcase
              
   when "U"
          person_update.update_politics[options=> 'Liberal' 'Conservative' 'Tea Party' 'Socialist' 'Neutral']
      
      else
        puts "Are you updating your party affiliation? options: (D)emocrat or (R)epublican"
          case new_party_affiliation = gets.chomp.upcase
   when "U"
            person_update.update_party_affiliation[options=> 'Democrat' 'Republican']
    end
  end 
end
    puts "Who would you like to delete? option: name (first, last)"
      case option_name_delete = gets.chomp.upcase
          
 when "D"
        person_delete = records.find_person_by_name(delete_name)
      if person_delete == nil
        puts "#{delete_name} not found."
      else
        records.delete_person(person_delete)
        puts "#{delete_name} removed."
     end
  end 
      else
       puts "Oops! That options is not available. Let's try again."
  end

puts "You are now leaving Voter Simulation...Goodbye!"