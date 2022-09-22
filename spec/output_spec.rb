require 'rails_helper'
require 'pry'
require './app/next_move.rb'

RSpec.describe 'nextMove(n, r, c, grid) Output' do
    before :each do
        @n = 5
        @r = 2
        @c = 3
        @grid = [ ['-', '-', '-', '-', '-'], ['-', '-', '-', '-', '-'], ['p', '-', '-', 'm', '-'], ['-', '-', '-', '-', '-'], ['-', '-', '-', '-', '-']]
    end

    it 'confirm marios position' do
        response = MoveFinder.new.findMario(@grid)

        expect(response).to eq({:row=>2, :column=>3})
    end

    it 'locate Peaches position' do
        response = MoveFinder.new.findPeach(@grid)

        expect(response).to eq({:row=>2, :column=>0})
    end

    it 'shows mario the next move to Peach!' do
        response = MoveFinder.new.getNextMove(@n, @r, @c, @grid)

        expect(response).to eq("LEFT")
    end

    it 'works with a different input' do
        r = 0
        c = 3
        grid = [ ['-', '-', '-', 'm', '-'], ['-', '-', '-', '-', '-'], ['p', '-', '-', '-', '-'], ['-', '-', '-', '-', '-'], ['-', '-', '-', '-', '-']]

        response = MoveFinder.new.getNextMove(@n, r, c, grid)

        expect(response).to eq("DOWN")
    end
end