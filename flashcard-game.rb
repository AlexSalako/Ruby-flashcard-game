
# creates a method that will start the game 
def start_game()
    system "clear"
    puts "Please Enter your name: "
    name = gets.upcase.chomp
    puts "Hello #{name}, Welcome to the Math Flash Card Game!"
    puts "Which cards would you like: (ADD|SUBTRACT|MULTIPLY|DIVIDE)"
    game = gets.upcase.chomp
    
    if game == "ADD"
        add_flashcards()
    elsif game == "SUBTRACT"
        subtract_flashcards()
    elsif game == "MULTIPLY"
        multiply_flashcards()
    elsif game == "DIVIDE"
        divide_flashcards()
    else
        puts "Sorry, we didn't recognise the command. Hit Enter to try again!!"
        gets 
        start_game
    end
end

def add_flashcards()
    system "clear"
    num_1 = Random.rand(0..100)
    num_2 = Random.rand(0..100)
    correct_ans = num_1 + num_2
    
    puts "What is #{num_1} + #{num_2}?"
    user_ans = gets.chomp.to_i
    if user_ans == correct_ans
        system "clear"
        puts "Correct! #{num_1} + #{num_2} = #{correct_ans}"
    else
        puts "Sorry..Go pick up a mathbook! #{num_1} + #{num_2} doesn't equal #{user_ans}, it equals #{correct_ans}!"
    end
    
    puts "Would you like to play again? [Y/N/RESTART] "
    play_again = gets.chomp.upcase
    
    if play_again == 'Y'
        add_flashcards
    elsif play_again == 'RESTART'
        start_game()
    else
        exit
    end
end

def subtract_flashcards
    system "clear"
    num_1 = Random.rand(0..100)
    num_2 = Random.rand(0..100)
    correct_ans = num_1 - num_2
    
    puts "What is #{num_1} - #{num_2}?"
    user_ans = gets.chomp.to_i
    if user_ans == correct_ans
        system "clear"
        puts "Correct! #{num_1} - #{num_2} = #{correct_ans}"
    else
        puts "Sorry..Go pick up a mathbook! #{num_1} - #{num_2} doesn't equal #{user_ans}, it equals #{correct_ans}!"
    end
    
    puts "Would you like to play again? [Y/N/RESTART] "
    play_again = gets.chomp.upcase
    
    if play_again == 'Y'
        subtract_flashcards
    elsif play_again == 'RESTART'
        start_game()
    else
        exit
    end
end

def multiply_flashcards
    system "clear"
    num_1 = Random.rand(0..100)
    num_2 = Random.rand(0..100)
    correct_ans = num_1 * num_2
    
    puts "What is #{num_1} * #{num_2}?"
    user_ans = gets.chomp.to_i
    if user_ans == correct_ans
        system "clear"
        puts "Correct! #{num_1} * #{num_2} = #{correct_ans}"
    else
        puts "Sorry..Go pick up a mathbook! #{num_1} * #{num_2} doesn't equal #{user_ans}, it equals #{correct_ans}!"
    end
    
    puts "Would you like to play again? [Y/N/RESTART] "
    play_again = gets.chomp.upcase
    
    if play_again == 'Y'
        multiply_flashcards
    elsif play_again == 'RESTART'
        start_game()
    else
        exit
    end
end

def divide_flashcards
    system "clear"
    num_1 = Random.rand(0..100.0)
    num_2 = Random.rand(1..100.0)
    correct_ans = num_1 / num_2
    
    puts "What is #{num_1} / #{num_2}?"
    user_ans = gets.chomp.to_f
    if user_ans == correct_ans
        system "clear"
        puts "Correct! #{num_1} / #{num_2} = #{correct_ans}"
    else
        puts "Sorry..Go pick up a mathbook! #{num_1} / #{num_2} doesn't equal #{user_ans}, it equals #{correct_ans}!"
    end
    
    puts "Would you like to play again? [Y/N/RESTART] "
    play_again = gets.chomp.upcase
    
    if play_again == 'Y'
        divide_flashcards
    elsif play_again == 'RESTART'
        start_game()
    else
        exit
    end
end

start_game()


