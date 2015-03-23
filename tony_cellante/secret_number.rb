puts "Welcome to NUMBER MASTER"
puts "Created by: Tony Cellante"
puts ""
#  
#   - Ask for the player's name then personally greet them by printing to the
#     screen, "Hi player_name!"
puts "Tell Us your Name:"
puts ""
player_name = gets.strip
puts ""
puts "Hello " + player_name.upcase + " !!!!!"
puts ""
puts "GAME RULES:"
puts ""
puts "This is a game of skill. The computer has chosen a number between 1 and 10 at random. You have 3 guesses to find out what it is"
puts "But dont worry! We will help you.....a little!"
puts ""
puts ""
solution = rand(1..10).to_s
puts "Make your first guess:"

guess = gets.strip.to_s


i = 1
chances = 3

while guess != solution && i < chances
  if guess < solution
      puts "Sorry #{player_name.upcase}. You were too low. Guesses left: #{chances - i}"
      puts "Guess Again"
  elsif guess > solution
      puts "Sorry #{player_name.upcase}. You were too high. Guesses left: #{chances - i}"
      puts "Guess Again"
  

end

guess = gets.strip.to_s
i += 1

if guess == solution
   puts "Nice one #{player_name.upcase}! You Guessed it!!! Play again!!" 


  
elsif i == 3
  puts "Sorry #{player_name.upcase} you are out of Guesses! We were looking for the number #{solution}"
  puts "Game Over"
 
end
end
