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
end