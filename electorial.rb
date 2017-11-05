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
     name = gets.chomp.upcase
     puts "Political Affiliation? options: (L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral."
     case option_politics = gets.chomp.upcase
         
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
      name = gets.chomp.upcase
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
  person_update = records.find_person_by_name(update_name)    
    if person_update == nil
       puts "#{update_name} not found."
    else
      puts "Updated Name"
        new_name = gets.chomp.upcase
      person_update.update_new(new_name)
      
if person_update.is_a?(Voter)
   puts "Are updating your political affiliation options: (L)iberal,(C)onservative, (T)ea Party, (S)ocialist, or (N)eutral"
  case new_politics = gets.chomp.upcase
      person_update.update_politics([options: "Liberal", "Conservative", "Tea Party", "Socialist", "Neutral"].detect{ |politics| politics.start_with?(new_politics)})
      
  else
      puts "Are you updating your party affiliation? options:(D)emocrat or (R)epublican"
  case new_party_affiliation = gets.chomp.upcase
      person_update.update_party_affiliation(["Democrat", "Republican"].detect{ |party_affiliation| party_affiliation.start_with?(new_party_affiliation)})
  

      else
       puts "Oops! That options is not available. Let's try again."
      end
  end
    
  puts "Who would you like to update? options: Name"
  case option_name = gets.chomp.upcase
  index_for_politician = @records.search_politician(name)

if index_for_politician
  puts "What is the new name?"
  case option_new_name = gets.chomp.upcase
  puts "If you are updating your party affiliation, new affiliation?"
  case new_party_affiliation = gets.chomp.upcase

    when "D"
       party_affiliation = "Democrat"
       @records.update_politician(old_name, new_name, new_party_affiliation)
    when "C"
       party_affiliation = "Republican"
       @records.update_politician(old_name, new_name, new_party_affiliation)
    else
       puts "Oops! That options is not available. Let's try again."
    end
  end
end  
      
      
  when "D"
    puts "Who would you like to delete? option: name"
    case option_name = gets.chomp.upcase
index_for_voter = @records.search_voter(name)
if index_for_voter
    puts "Are you sure? options (Y)es or (N)o"
    case option = gets.chomp.upcase
     
    when "Y", "Yes", "(y)es", "(Y)es"
      @records.delete_voter(name)
    when "N", "No", "(n)o", "(N)"
      puts "Ok. Record 'not' deleted"
    else
      puts "Oops! That options is not available. Let's try again."
    end
  end
        
index_for_politician = @records.search_politician(name)
if index_for_politician
    puts "Are you sure? options (Y)es or (N)o"
    case option = gets.chomp.upcase
     
    when "Y", "Yes", "(y)es", "(Y)es"
      @records.delete_politician(name)
    when "N", "No", "(n)o", "(N)"
      puts "Ok. Record 'not' deleted"
    else
      puts "Oops! That options is not available. Let's try again."
        
 when "E"
      puts "Now leaving Voter Sim...Goodbye!"
    end
  end
end