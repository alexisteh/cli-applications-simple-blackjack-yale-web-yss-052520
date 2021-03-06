def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  k = rand(11) + 1
  return k 
end

def display_card_total(cardtotal)
  puts "Your cards add up to #{cardtotal}" 
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp 
end

def end_game(cardtotal)
  puts "Sorry, you hit #{cardtotal}. Thanks for playing!"
end

def initial_round
  a = deal_card
  b = deal_card
  sum = a + b 
  display_card_total(sum)
  return sum 
end

def hit?(cardtotal)  
  prompt_user 
  input = get_user_input
  if input == 's' 
    return cardtotal 
  elsif input == 'h' 
    new = deal_card 
    cardtotal += new 
    return cardtotal 
  end 
  invalid_command
  hit?(cardtotal)
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  sum = initial_round
  while sum <= 21 do 
    sum = hit?(sum)
    display_card_total(sum)
  end 
end_game(sum)
end
    
