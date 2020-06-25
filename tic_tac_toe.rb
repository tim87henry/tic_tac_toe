class TicTacToe
    def initialize
        @board=[1,2,3,4,5,6,7,8,9]
        @CHOICE=["X","O"]
        @current_player=1
        puts "\nPlayer 1 is X and Player 2 is O"
        puts "\nLet the game begin!!"
    end

    def draw_board
        puts "\n\n"
        puts "     *   *   *"
        puts "---------------"
        puts "* |  #{@board[0]}   #{@board[1]}   #{@board[2]}"
        puts "* |  #{@board[3]}   #{@board[4]}   #{@board[5]}"
        puts "* |  #{@board[6]}   #{@board[7]}   #{@board[8]}"
        puts "\n"
    end

    def game_play
        while game_not_over? do
            puts "Player #{@current_player} enter your choice : "
            choice=gets.chomp.to_i
            play_turn(@current_player,choice)
            draw_board
        end
    end

    def play_turn(player,choice)
        puts @CHOICE[player-1]
        @board[choice-1]=@CHOICE[player-1]
        if @current_player == 1 then @current_player=2 else @current_player=1 end 
    end
    
    def game_not_over?
        if @board.grep(Integer).count()==0
            puts "It's a tie"
            false
        elsif (@board[0]=="X" and @board[1]=="X" and @board[2]=="X") || (@board[3]=="X" and @board[4]=="X" and @board[5]=="X") || (@board[6]=="X" and @board[7]=="X" and @board[8]=="X")
            puts "Player 1 wins"
            false
        elsif (@board[0]=="X" and @board[3]=="X" and @board[6]=="X") || (@board[1]=="X" and @board[4]=="X" and @board[7]=="X") || (@board[2]=="X" and @board[5]=="X" and @board[8]=="X")
            puts "Player 1 wins"
            false
        elsif (@board[0]=="O" and @board[1]=="O" and @board[2]=="O") || (@board[3]=="O" and @board[4]=="O" and @board[5]=="O") || (@board[6]=="O" and @board[7]=="O" and @board[8]=="O")
            puts "Player 2 wins"
            false
        elsif (@board[0]=="O" and @board[3]=="O" and @board[6]=="O") || (@board[1]=="O" and @board[4]=="O" and @board[7]=="O") || (@board[2]=="O" and @board[5]=="O" and @board[8]=="O")
            puts "Player 2 wins"
            false
        else
            true
        end
    end

end

game=TicTacToe.new()
game.draw_board()
game.game_play()