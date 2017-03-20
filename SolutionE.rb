#---------
# name: NumberGuess.rb
#
#----------------

class Screen

 def cls
   puts ("\n" * 30)
   puts "\a"
 end

 def pause
    STDIN.gets
 end

end

class Game
	def display_greeting
		Console_Screen.cls
		print "\t\t Welcome to the Ruby Number Guessing Game!" +
		"\n\n\n\n\n\n\n\n\n\n\n\n\ Press Enter to " + 
		"continue."

		Console_Screen.pause
	end

	def display_instruction
		Console_Screen.cls
		puts "Instruction:\n\n"

		puts "This game randomly generates a number from 1 to 1000 and "
		puts "challaenges you to identify it in as few guesses and possible "
	end

	def generate_number
		return rand = 1 + rand(1000)
	end

	def play_game
		number = generate_number

		loop do
			Console_Screen.cls
			print "\nEnter your guess and press the enter key: "

			reply = STDIN.gets
			reply.chop!
			reply = reply.to_i
			
			nooftime=reply+1
			nooftime.chop!
			nooftime=nooftime.to_i
			
			if(nooftime==10)
			    print "you have lost the game better luck next time"
			    

			elsif reply < 1 or reply > 1000 then
				redo # redo the ciurrent iteration of the loop
			end

			if ( reply > 1000 && reply.to_i.is_a?(Integer) && num.to_i=!reply)
			    Console_Screen.cls
			    print " this is invalid guess"
			    Console_Screen.pause
			    break
			elsif reply == number then
				Console_Screen.cls
				print "You have guessed the number! Press Enter to continue."
				print "well done "
				Console_Screen.pause
				print " you have guessed in #{"(j+k+1)"} times"
				break
			elsif reply < number then
				Console_Screen.cls
				print "Your guess is too low! Press enter to continue."
				Console_Screen.pause
				j=j+1
			elsif reply > number then
				Console_Screen.cls
				print "Your guess is too high! Press enter to continue."
				Console_Screen.pause
			    k=k+1
			elsif 
			    Console_Screen.cls
			    print "you want know the number"
			    Console_Screen.pause
			    print "number is #{number}"
			    break
			end

		end
			
	end

	def display_credits
		Console_Screen.cls
		puts "\t\t\Thanks you for playing the number game!!"
	end

	$noRight = 0

	Console_Screen = Screen.new

	SQ = Game.new

	SQ.display_greeting

	answer = ""

	loop do
		Console_Screen.cls

		print "Are you ready to play the Ruby Number Guessing Game? (y/n): "

		answer = STDIN.gets

		answer.chop!

		break if answer == "y" || answer == "n"
	end

	if answer == "n"

		Console_Screen.cls

		puts "Perhaps anoher time.\n\n"

	else
		SQ.display_instruction

		loop do
			SQ.play_game

			Console_Screen.cls

			print "Would you like to play again? (y/n): "

			playAgain = STDIN.gets
			playAgain.chop!

			break if playAgain == "n"
		end

		SQ.display_credits

	end

end


