require 'pry'

def error_handling(n, grid_array)
    number_confirmation = (n.odd? && 3 <= n && n < 100)

    grid_confirmation = (n == grid_array.size)

    if number_confirmation == false
        return 'Error: Input Needs to be an Odd Number Between 3 - 99'
    elsif number_confirmation && grid_confirmation == false
        return "Grid Doesn't Match n x n Format"
    end

end

def nextMove(n, r, c, grid)

    if error_handling(n, grid) != nil
        return error_handling(n, grid)
    end

end