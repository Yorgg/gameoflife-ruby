class GameOfLife
  attr_accessor :board, :h, :w
  
  def initialize(board)
    @board = board
    @h = board.size-1 
    @w = board[0].size-1 
  end
   
  def next_gen!
    0.upto(h) do |r|
      0.upto(w) do |c|
        add_next_state_to_cell(r,c)
      end
    end
    update_cells!
  end
  
  private
  
  def add_next_state_to_cell(r,c)
    count = alive_neighbors_count(r,c)
    board[r][c] |= 2 if count == 3 || count == 2 && board[r][c] == 1 
  end

  def alive_neighbors_count(r,c)
    count = 0
    ([r-1,0].max).upto([r+1, h].min) do |rr|
      ([c-1,0].max).upto([c+1, w].min) do |cc|
        next if (rr == r && cc == c)
        count += board[rr][cc] & 1 
      end
    end
    count
  end
  
  def update_cells!
    0.upto(h) {|r| 0.upto(w) {|c| board[r][c] >>= 1}} 
  end
end


