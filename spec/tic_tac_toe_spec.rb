require './tic_tac_toe'
describe "#tic_tac_toe" do
   it "top row all x" do
      game=TicTacToe.new
      game.board[0]='X'
      game.board[1]='X'
      game.board[2]='X'
      expect(game.game_not_over?).to eql(false)
   end

   it "left to right diagonal Os" do
      game=TicTacToe.new
      game.board[0]='O'
      game.board[4]='O'
      game.board[8]='O'
      expect(game.game_not_over?).to eql(false)
   end

   it "set right player choice" do
      game=TicTacToe.new
      game.play_turn(1,4)
      expect(game.board[3]).to eql('X')
   end

end

