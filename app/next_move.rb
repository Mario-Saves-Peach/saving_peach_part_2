require 'pry'

def error_handling(n, r, c, grid_array)
    number_confirmation = (2 <= n && n < 100)

    grid_confirmation = (n == grid_array.size)

    if number_confirmation == false
        return 'Error: Input Needs to be a Number Between 2 - 99'
    elsif number_confirmation && grid_confirmation == false
        return "Grid Doesn't Match n x n Format"
    elsif (r <= (n - 1)) == false
        return "Error: Row input is incorrect"
    elsif (c <= (n - 1)) == false
        return "Error: Column input is incorrect"
    end
end

def findMario(grid)
    grid.each_with_index do |array, index| 
        if array.include?('m')
            hash = Hash.new()
            hash[:row] = "#{index}"
            hash[:column] = "#{array.index('m')}"
            return hash
        end
    end
end

def findPeach(grid)
    grid.each_with_index do |array, index| 
        if array.include?('p')
            hash = Hash.new()
            hash[:row] = "#{index}"
            hash[:column] = "#{array.index('p')}"
            return hash
        end
    end
end

def directions(vartical, horizontal)
    directions = []

    if vartical > 0
        vartical.times do
            directions << "UP"
        end
    elsif vartical < 0
        vartical.abs.times do
            directions << "DOWN"
        end
    end

    if horizontal > 0
        horizontal.times do
            directions << "LEFT"
        end
    elsif horizontal < 0
        horizontal.abs.times do
            directions << "RIGHT"
        end
    end

    return directions
end

def nextMove(n, r, c, grid)
    if error_handling(n, r, c, grid) != nil
        return error_handling(n, r, c, grid)
    end

    marios_position = findMario(grid)

    peaches_position = findPeach(grid)

    vertical = marios_position[:row].to_i - peaches_position[:row].to_i

    horizontal = marios_position[:column].to_i - peaches_position[:column].to_i
end