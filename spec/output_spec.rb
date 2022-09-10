require 'rails_helper'
require 'pry'
require './app/next_move.rb'

RSpec.describe 'nextMove(n, r, c, grid) Output' do
    before :each do
        @n = 5
        @r = 2
        @c = 3
        @grid = [ ['-', '-', '-', '-', '-'], ['-', '-', '-', '-', '-'], ['p', '-', 'm', '-', '-'], ['-', '-', '-', '-', '-'], ['-', '-', '-', '-', '-']]
    end

    it 'confirm marios position' do
        response = findMario(@gird)

        expect(response).to eq({:row=>"2", :column=>"3"})
    end

    it 'locate Peaches position' do
        response = findPeach(@gird)

        expect(response).to eq({:row=>"2", :column=>"0"})
    end
    
    it 'shows mario the next move to Peach!' do
        response = nextMove(@n, @r, @c, @grid)

        expect(response).to eq("LEFT")
    end
end