# Game of Life 

This is a simple Ruby implementation of Conway's Game of life.
The game takes a board and updates it in-place. 

`0(1)` space complexity

`0(h*w)` time complexity 


## Setup

```ruby
board = [[0,1,0,1],[0,0,1,1],[1,1,1,1],[1,0,0,0]]]

game = GameOfLife.new(board)
game.next_generation!
game.next_generation!
```

## Implementation

Before evolving, each cell's next state is calculated and added to its second bit:  

```ruby
"00" #next is dead  and current is dead
"10" #next is alive and current is dead
"01" #next is dead  and current is alive
"11" #next is alive and current is alive
```








