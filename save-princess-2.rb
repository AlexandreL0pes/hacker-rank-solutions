#!/bin/ruby

## Link
## https://www.hackerrank.com/challenges/saveprincess2

def nextMove(n, x, y, grid)
  g = Grid.new(n, grid)

  g.bot_coord = [x,y]

  g.get_princess_coordinates

  return g.next_move
end

class Grid

  attr_reader :n, :matrix, :princess_coord
  attr_accessor :bot_coord

  def initialize(n, grid)
    @n = n
    @matrix = grid
    @princess_mark = 'p'
    @bot_mark = 'm'
    @princess_coord = nil
    @bot_coord = nil
  end

  def has_valid_row_count
    self.n == self.matrix.size
  end

  def has_valid_column_count
    invalid = self.matrix.select { |line| line.size != self.n }
    invalid.size == 0
  end

  def is_valid
    has_valid_row_count && has_valid_column_count
  end

  def get_coordinates_for(val)
    self.matrix.each.with_index do |line, x_index|
      line.split('').each.with_index do |column, y_index|
        if column == val
          return x_index, y_index
        end
      end
    end

  end

  def get_princess_coordinates
    if not princess_coord
      @princess_coord = self.get_coordinates_for(@princess_mark)
    end
    princess_coord
  end

  def next_move
    move = nil 

    row_diff = bot_coord[0] - princess_coord[0]
    col_diff = bot_coord[1] - princess_coord[1]

    if not row_diff == 0
      if row_diff > 0
        move = 'UP'
      else
        move = 'DOWN'
      end
    elsif not col_diff == 0
      if col_diff > 0
        move = 'LEFT'
      else
        move = 'RIGHT'
      end
    end

    move
  end
end

n = gets.to_i

bot_pos = gets
x, y = bot_pos.split(' ').map(&:to_i)

grid = Array.new(n)

(0...n).each do |i|
  grid[i] = gets.strip
end

puts nextMove(n, x, y, grid)