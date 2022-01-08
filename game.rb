class Game
  def initialize
    puts "What are the players names?"
    puts "Enter Player 1:"
    player_one_name = gets.chomp
    puts "Enter Player 2:"
    player_two_name = gets.chomp
    @playerOne = Player.new(player_one_name)
    @playerTwo = Player.new(player_two_name)
  end

  def play_game
    while @playerOne.lives > 0 and @playerTwo.lives > 0 

      # PLAYER ONE TURN
      numberOne = rand(1..21)
      numberTwo = rand(1..21)
      answer = numberOne + numberTwo
      
      puts "#{@playerOne.name}: What is #{numberOne} + #{numberTwo}"
      playerAnswer = gets.chomp
      if(playerAnswer.to_i != answer)
        puts "#{@playerOne.name} is wrong #{playerAnswer} is not equal to #{answer}"
        @playerOne.lives -= 1
        if(@playerOne.lives == 0)
          puts "#{@playerTwo.name} Wins, #{@playerOne.name} Loses"
          break
        end
      end

      puts "----------"
      puts  "#{@playerOne.name}: #{@playerOne.lives}"
      puts  "#{@playerTwo.name}: #{@playerTwo.lives}"
      puts "----------"
      puts "\n"
      puts "!!!!New Turn!!!!"
      puts "\n"

      # PLAYER TWO TURN
      numberOne = rand(1..21)
      numberTwo = rand(1..21)
      answer = numberOne + numberTwo

      puts "#{@playerTwo.name}: What is #{numberOne} + #{numberTwo}"
      playerAnswer = gets.chomp
       if(playerAnswer.to_i != answer)
        puts "#{@playerTwo.name} is wrong #{playerAnswer} is not equal to #{answer}"
        @playerTwo.lives -= 1
          if(@playerTwo.lives == 0)
            puts "#{@playerOne.name} Wins, #{@playerTwo.name} Loses"
            break
          end
      end

      puts "----------"
      puts  "#{@playerOne.name}: #{@playerOne.lives}"
      puts  "#{@playerTwo.name}: #{@playerTwo.lives}"
      puts "----------"
      puts "\n"
      puts "!!!!New Turn!!!!"
      puts "\n"
    end
  end
end