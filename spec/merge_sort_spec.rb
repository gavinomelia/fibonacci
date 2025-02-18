require 'rspec'
require_relative '../lib/merge_sort'

RSpec.describe 'merge_sort' do
  it 'sorts an array of integers' do
    expect(merge_sort([3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5])).to eq([1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9])
  end

  it 'sorts an array of strings' do
    expect(merge_sort(%w[banana apple cherry])).to eq(%w[apple banana cherry])
  end

  it 'returns an empty array when given an empty array' do
    expect(merge_sort([])).to eq([])
  end

  it 'returns the same array when given an array with one element' do
    expect(merge_sort([1])).to eq([1])
  end

  it 'sorts an array with negative numbers' do
    expect(merge_sort([3, -1, 4, -1, 5, -9, 2, 6, 5, 3, 5])).to eq([-9, -1, -1, 2, 3, 3, 4, 5, 5, 5, 6])
  end

  it 'sorts an array with duplicate elements' do
    expect(merge_sort([5, 3, 8, 3, 9, 1, 5])).to eq([1, 3, 3, 5, 5, 8, 9])
  end
end