#Main page that allows voters and politicians to create, list, update, and delete records.

require './records.rb'

class Electorial  
  def initialize
    @records = Records.new
  end

#Opening greeting and menu options.

  def main_menu
    puts "Welcome to Voter Simulation!"
    puts "Voter Simulation gives you the ability to create, list, update, and delete records.\n So, let's begin. Selecting from the following, what would you like to do?"
    puts "Options: (C)reate, (L)ist, (U)pdate, (D)elete or (E)nd records?"
    case option = gets.chomp.upcase
      
    when "C"
      create
    when "L"
      puts @records.list
    when "U"
      update
    when "D"
      delete
    when "E"
      puts "Now leaving Voter Sim...Goodbye!"
    break
        
    else
      puts "Oops :/ Try again."
    end
  end
    
def create
    puts "Would you like to create? options: (V)oter or (P)olitician"
    case option = gets.chomp.upcase
        
    when "V"
     puts "Name?"
     name = gets.chomp
     puts "Politics?"
     puts "(L)iberal, (C)onservative, (T)ea Party, (S)ocialists, or (N)eutral."
     case politics = gets.chomp.upcase
         
     when "L"
       politics = "Liberal"
       @records.create_voter(name, politics)
      when "C"
       politics = "Conservative"
       @records.create_voter(name, politics)
      when "T"
       politics = "Tea Party"
       @records.create_voter(name, politics)
      when "S"
       politics = "Socialists"
       @records.create_voter(name, politics)
      when "N"
       politics = "Neutral"
       @records.create_voter(name, politics)
      else
       puts "Oops! That options is not available. Let's try again."
      end     
    
    when "P"
      puts "Name?"
      name = gets.chomp.upcase
      puts "Party_Affiliation? options: (D)emocrat or (R)epublican"
      party_affiliation = gets.chomp.upcase
    case party_affiliation
      when "D"
       party_affiliation = "Democrat"
       @records.create_politician(name, party_affiliation)
    when "C"
       party_affiliation = "Republican"
       @records.create_politician(name, party_affiliation)
    else
       puts "Oops! That options is not available. Let's try again."
    end
end        
    
def list
    when "L"
     puts records.list_voters()
     puts records.list_politicians()
    end
end
    
def update
  puts "Who would you like to update? options: Name"
  case option_name = gets.chomp.upcase
  index_for_voter = @records.search_voter(name)
      
if index_for_voter
  puts "What is the new name?"
  case option_new_name = gets.chomp.upcase
  puts "If you are updating your political affiliation, new affiliation?"
  case new_politics = gets.chomp.upcase
      when "L"
       new_politics = "Liberal"
       @records.update_voter(old_name, new_name, new_politics)
      when "C"
       politics = "Conservative"
       @records.update_voter(old_name, new_name, new_politics)
      when "T"
       politics = "Tea Party"
       @records.update_voter(old_name, new_name, new_politics)
      when "S"
       politics = "Socialists"
       @records.update_voter(old_name, new_name, new_politics)
      when "N"
       politics = "Neutral"
        @records.update_voter(old_name, new_name, new_politics)
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
      
def delete
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
    end
  end
end