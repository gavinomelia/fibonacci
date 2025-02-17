# frozen_string_literal: true

require_relative '../lib/fibonacci'

RSpec.describe Fibonacci do
  sequence = [0, 1, 1, 2, 3, 5, 8, 13]
  describe '#fibs' do
    it 'displays the right sequence' do
      fibonacci = Fibonacci.new
      expect(fibonacci.iterative_fibs(8)).to eq(sequence)
    end
  end
end
