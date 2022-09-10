require 'pry'

def error_handling(n, grid_array)
    number_confirmation = (n.odd? && 3 <= n && n < 100)

    if number_confirmation == false
        return 'Error: Input Needs to be an Odd Number Between 3 - 99'
    end

end

def nextMove(n, r, c, grid)

    if error_handling(n, grid) != nil
        return error_handling(n, grid)
    end

end