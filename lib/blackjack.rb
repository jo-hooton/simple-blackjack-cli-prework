def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  return 1 + rand(11) # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"# code #prompt_user here
end

def get_user_input
  answer = gets.chomp
  return answer# code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"# code #end_game here
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  card_total = first_card + second_card
  display_card_total(card_total)
  return card_total# code #initial_round here
end

def hit?(card_total)
   prompt_user
   answer = get_user_input
   if answer == "h"
    card_total += deal_card #increase your former total by the new number given by dealing another card
  elsif answer == "s"
    card_total #return the number and prompt user to hit again
  else
    invalid_command
  end# code hit? here
end

def invalid_command
  puts "Please enter a valid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  puts welcome
  card_total = initial_round
    until card_total >= 21
      card_total = hit?(card_total)
      display_card_total(card_total)
    end
  return end_game# code runner here
end
