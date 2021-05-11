# frozen_string_literal: true

# Link - https://www.hackerrank.com/challenges/saveprincess

def display_path_to_princess(grid_size, grid)
  grid = Grid.new(grid_size, grid)

  raise 'Grid validation error' unless grid.valid?

  grid.bot_coordinates
  grid.princess_coordinates

  puts grid.path
end

# Class to simulate grid and calc paths
class Grid
  attr_reader :n, :matrix, :princess_coord, :bot_coord

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

  def valid_column_count?
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

  def bot_coordinates
    @bot_coord = coordinates_for(@bot_mark) unless bot_coord
    bot_coord
  end

  def direction_path(direction, diff)
    if diff.positive?
      direction == 'row' ? 'UP' : 'LEFT'
    else
      direction == 'row' ? 'DOWN' : 'RIGHT'
    end
  end

  def append_path(row_direction, col_direction, row_diff, col_diff)
    path = []

    (1..row_diff.abs).each do |_i|
      path.append(row_direction)
    end

    (1..col_diff.abs).each do |_i|
      path.append(col_direction)
    end

    path
  end

  def path
    row_diff = bot_coord[0] - princess_coord[0]
    col_diff = bot_coord[1] - princess_coord[1]

    row_direction = direction_path('row', row_diff)
    col_direction = direction_path('col', col_diff)

    path = append_path(row_direction, col_direction, row_diff, col_diff)

    path.join("\n")
  end
end

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
  grid[i] = gets.strip
end

display_path_to_princess(m, grid)
