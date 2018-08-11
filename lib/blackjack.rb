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
  puts "Sorry, you hit 27. Thanks for playing!"# code #end_game here
end

def initial_round(card_total)
  puts deal_card
  puts deal_card
  puts "Your cards add up to #{display_card_total}" # code #initial_round here
end

def hit?
  answer = gets.chomp# code hit? here
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
