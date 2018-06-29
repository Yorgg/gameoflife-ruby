# Game of Life 

This is a simple Ruby implementation of Conway's Game of life.
The game takes a board and updates it in-place. 

`0(1)` space complexity

`0(h*w)` time complexity 

```ruby
# dead cell => 0, alive cell => 1

board = [[0,1,0,1],[0,0,1,1],[1,1,1,1],[1,0,0,0]]]

game = GameOfLife.new(board)
game.next_gen!
game.next_gen!
```

