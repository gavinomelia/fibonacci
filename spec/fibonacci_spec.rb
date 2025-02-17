# frozen_string_literal: true

require_relative '../lib/fibonacci'

RSpec.describe Fibonacci do
  let(:fibonacci) { Fibonacci.new }
  let(:sequence) { [0, 1, 1, 2, 3, 5, 8, 13] }

  describe '#iterative_fibs' do
    it 'displays the right sequence' do
      expect(fibonacci.iterative_fibs(8)).to eq(sequence)
    end
  end

  describe '#recursive_fibs' do
    it 'displays the right sequence' do
      expect(fibonacci.recursive_fibs(8)).to eq(sequence)
    end

    it 'returns the correct number of items in the sequence' do
      expect(fibonacci.recursive_fibs(4)).to eq(sequence[0..3])
    end
  end
end
