class GameRunner
    def initialize
        @grid_builder = GridBuilder.new
        @move_finder = MoveFinder.new
    end

    def run
        @grid_builder.build
        mario_placement = @grid_builder.get_mario_placement
        puts @move_finder.getNextMove(@grid_builder.get_grid_size, mario_placement[:row], mario_placement[:column], @grid_builder.get_grid_data)
    end
end

class GridBuilder
    attr_reader :number, :row, :column, :grid

    def initialize
        @number = 0
        @row = 0
        @column = 0
        @grid = Array.new
    end

    def build
        @number = gets.to_i

        @row,@column = gets.strip.split.map {|num| num.to_i}

        @number.times do
            @grid << gets.strip.split('')
        end
    end

    def get_grid_size
        @number
    end

    def get_mario_placement
        {row: @row,
        column: @column}
    end

    def get_grid_data
        @grid
    end
end

class AnswerBuilder
    def get_directions(vertical_distance, horizontal_distance)
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
end

class MoveFinder
    def findMario(grid)
        hash = Hash.new
    
        hash[:row] = grid.find_index{|array| array.include?('m')}
    
        hash[:column] = grid.find{|array| array.include?('m')}.index('m')
    
        return hash
    end
    
    def findPeach(grid)
        hash = Hash.new
    
        hash[:row] = grid.find_index{|array| array.include?('p')}
    
        hash[:column] = grid.find{|array| array.include?('p')}.index('p')
    
        return hash
    end

    def find_players_positions(grid)
        marios_position = findMario(grid)
    
        peaches_position = findPeach(grid)
    
        vertical = marios_position[:row].to_i - peaches_position[:row].to_i
    
        horizontal = marios_position[:column].to_i - peaches_position[:column].to_i

        return {vertical: vertical, 
                horizontal: horizontal}
    end

    def getNextMove(n, r, c, grid)
        error = find_error(n, r, c, grid)
    
        if error != nil
            return error
        end

        answer_builder = AnswerBuilder.new

        positions = find_players_positions(grid)
    
        return answer_builder.get_directions(positions[:vertical], positions[:horizontal])[0]
    end

    def find_error(n, r, c, grid_array)
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
end

GameRunner.new.run