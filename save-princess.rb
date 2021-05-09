#!/bin/ruby

# Link
# https://www.hackerrank.com/challenges/saveprincess
def displayPathToPrincess(n, grid)
  grid = Grid.new(n, grid) 

  if not grid.is_valid
    raise "Grid validation error"
  end

  grid.get_bot_coordinates
  grid.get_princess_coordinates

  puts grid.get_path
end

class Grid
  attr_reader :n, :matrix, :princess_coord, :bot_coord
  
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

  def get_bot_coordinates
    if not bot_coord
      @bot_coord = self.get_coordinates_for(@bot_mark)
    end
    bot_coord
  end

  def get_path
    path = []

    row_diff = bot_coord[0] - princess_coord[0]
    col_diff = bot_coord[1] - princess_coord[1]

    if row_diff > 0
      row_direction = 'UP'
    else
      row_direction = 'DOWN'
    end

    if col_diff > 0
      col_direction = 'LEFT'
    else
      col_direction = 'RIGHT'
    end

    for i in (1..row_diff.abs) do
      path.append(row_direction)
    end

    for i in (1..col_diff.abs) do
      path.append(col_direction)
    end
    
    path.join("\n")
  end

end

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
  grid[i] = gets.strip
end

displayPathToPrincess(m, grid)