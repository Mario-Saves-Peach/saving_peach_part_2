require 'rails_helper'
require 'pry'
# require './app/next_move.rb'

RSpec.describe 'nextMove(n, r, c, grid) Error Handling' do
    before :each do
        @n = 5
        @r = 2
        @c = 3
        @grid = '----------p-m------------'
    end

    describe 'number input errors' do
        it 'returns error if n is not an odd number from 3 - 99' do
            n = 4

            response = nextMove(n, @r, @c, @grid)

            expect(response).to eq('Error: Input Needs to be an Odd Number Between 3 - 99')

            n = 101

            response = nextMove(n, @r, @c, @grid)

            expect(response).to eq('Error: Input Needs to be an Odd Number Between 3 - 99')
        end
    end

    describe 'grid input errors' do
        it 'Returns Error if grid is not n x n format' do
            n = 7

            response = nextMove(n, @r, @c, @grid)

            expect(response).to eq("Grid Doesn't Match n x n Format")
        end
    end
end