#!/bin/ruby
# frozen_string_literal: true

## Link
## https://www.hackerrank.com/challenges/saveprincess2

def next_move(grid_size, bot_x, bot_y, grid)
  g = Grid.new(grid_size, grid)

  g.bot_coord = [bot_x, bot_y]

  g.princess_coordinates

  g.next_move
end

# Class to simulate grid and calc paths
class Grid
  attr_reader :n, :matrix, :princess_coord
  attr_accessor :bot_coord

  def initialize(grid_size, grid)
    @n = grid_size
    @matrix = grid
    @princess_mark = 'p'
    @bot_mark = 'm'
    @princess_coord = nil
    @bot_coord = nil
  end

  def valid_row_count?
    n == matrix.size
  end

  def valid_column_count
    invalid = matrix.reject { |line| line.size == n }
    invalid.size.zero?
  end

  def valid?
    valid_row_count? && valid_column_count?
  end

  def coordinates_for(val)
    matrix.each.with_index do |line, x_index|
      line.split('').each.with_index do |column, y_index|
        return x_index, y_index if column == val
      end
    end
  end

  def princess_coordinates
    @princess_coord = coordinates_for(@princess_mark) unless princess_coord
    princess_coord
  end

  def direction_path(direction, diff)
    if diff.positive?
      direction == 'row' ? 'UP' : 'LEFT'
    else
      direction == 'row' ? 'DOWN' : 'RIGHT'
    end
  end

  def next_move
    move = nil

    row_diff = bot_coord[0] - princess_coord[0]
    col_diff = bot_coord[1] - princess_coord[1]

    if row_diff != 0
      move = direction_path('row', row_diff)
    elsif col_diff != 0
      move = direction_path('col', col_diff)
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

puts next_move(n, x, y, grid)
