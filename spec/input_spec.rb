require 'rails_helper'
require 'pry'
require './app/next_move.rb'

RSpec.describe 'nextMove(n, r, c, grid) Error Handling' do
    before :each do
        @n = 5
        @r = 2
        @c = 3
        @grid = [ ['-', '-', '-', '-', '-'], ['-', '-', '-', '-', '-'], ['p', '-', 'm', '-', '-'], ['-', '-', '-', '-', '-'], ['-', '-', '-', '-', '-']]
    end

    describe 'number input errors' do
        it 'returns error if n is not a number from 2 - 99' do
            n = 1

            response = nextMove(n, @r, @c, @grid)

            expect(response).to eq('Error: Input Needs to be a Number Between 2 - 99')

            n = 101

            response = nextMove(n, @r, @c, @grid)

            expect(response).to eq('Error: Input Needs to be a Number Between 2 - 99')
        end
    end

    describe 'grid input errors' do
        it 'Returns Error if grid is not n x n format' do
            n = 7

            response = nextMove(n, @r, @c, @grid)

            expect(response).to eq("Grid Doesn't Match n x n Format")
        end

        it 'Returns Error if grid formatted correctly' do
            response = nextMove(@n, @r, @c, @grid)

            expect(@grid.size).to eq(@n)
        end
    end

    describe 'row and column input errors' do
        it 'Returns Error if row is inputed incorrecly (Negative Numbers Included)' do
            r = 5

            response = nextMove(@n, r, @c, @grid)

            expect(response).to eq("Error: Row input is incorrect")

            r = -2

            response = nextMove(@n, r, @c, @grid)

            expect(response).to eq("Error: Row input is incorrect")
        end

        it 'Returns Error if column is inputed incorrecly' do
            c = 7

            response = nextMove(@n, @r, c, @grid)

            expect(response).to eq("Error: Column input is incorrect")
        end

        it 'Returns Error if mario is not in the inputed spot' do
            c = 4

            response = nextMove(@n, @r, c, @grid)

            expect(response).to eq("Error: Mario is not in the position you inputed")
        end
    end
end