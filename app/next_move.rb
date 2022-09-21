def gettingStated
    number = gets.to_i

    r,c = gets.strip.split.map {|num| num.to_i}

    grid = Array.new

    number.times do
        grid << gets.strip.split('')
    end

    return {
        number: number.to_i,
        row: r.to_i,
        column: c.to_i,
        grid: grid
    }
end

def error_handling(n, r, c, grid_array)
    number_confirmation = (2 <= n && n < 100)

    grid_confirmation = (n == grid_array.size)

    if number_confirmation == false
        return 'Error: Input Needs to be a Number Between 2 - 99'
    elsif number_confirmation && grid_confirmation == false
        return "Grid Doesn't Match n x n Format"
    elsif (0 <= r && r <= (n - 1)) == false
        return "Error: Row input is incorrect"
    elsif (0 <= c && c <= (n - 1)) == false
        return "Error: Column input is incorrect"
    elsif findMario(grid_array)[:row].to_i != r || findMario(grid_array)[:column].to_i != c
        return "Error: Mario is not in the position you inputed"
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

def directions(vertical_distance, horizontal_distance)
    directions = []

    vertical_position = ''

    horizontal_position = ''

    if vertical_distance > 0
        vertical_position << "UP"
    elsif vertical_distance < 0
        vertical_position << "DOWN"
    end

    if horizontal_distance > 0
        horizontal_position << "LEFT"
    elsif horizontal_distance < 0
        horizontal_position << "RIGHT"
    end

    vertical_distance.abs.times do
        directions << vertical_position
    end

    horizontal_distance.abs.times do
        directions << horizontal_position
    end

    return directions
end

def nextMove(n, r, c, grid)
    error = error_handling(n, r, c, grid)
    
    if error != nil
        return error
    end

    marios_position = findMario(grid)

    peaches_position = findPeach(grid)

    vertical = marios_position[:row].to_i - peaches_position[:row].to_i

    horizontal = marios_position[:column].to_i - peaches_position[:column].to_i

    return directions(vertical, horizontal)[0]
end

input = gettingStated

puts nextMove(input[:number], input[:row], input[:column], input[:grid])