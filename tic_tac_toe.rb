class TicTacToe
    def initialize
        @go=0
        @board={"a1"=>" ","a2"=>" ","a3"=>" ","b1"=>" ","b2"=>" ","b3"=>" ","c1"=>" ","c2"=>" ","c3"=>" "}
        puts "\nPlayer 1 is X and Player 2 is O"
        puts "\nLet the game begin!!"
    end

    def draw_board
        puts "\n\n"
        puts "     1   2   3"
        puts "---------------"
        puts "a |  #{@board["a1"]}   #{@board["a2"]}   #{@board["a3"]}"
        puts "b |  #{@board["b1"]}   #{@board["b2"]}   #{@board["b3"]}"
        puts "c |  #{@board["c1"]}   #{@board["c2"]}   #{@board["c3"]}"
        puts "\n"
    end

    def game_play
        while game_not_over? do    
            puts "Player 1 enter your choice : "
            p1_choice=gets.chomp
            @board[p1_choice]="X"
            draw_board
            puts "Player 2 enter your choice : "
            p2_choice=gets.chomp
            @board[p2_choice]="O"
            draw_board
        end
    end
    
    def game_not_over?
        @go+=1
        if @board["a1"]==" " or @board["a2"]==" " or @board["a3"]==" " or @board["b1"]==" " or @board["b2"]==" " or @board["b3"]==" " or @board["c1"]==" " or @board["c2"]==" " or @board["c3"]==" "  then true else false end
    end

end

game=TicTacToe.new()
game.draw_board()
game.game_play()