require './bubble_sort.rb'

describe 'bubble_sort' do
  it 'returns a sorted array' do
    expect(bubble_sort([4, 3, 78, 2, 0, 2])).to eql([0, 2, 2, 3, 4, 78])
  end
end

describe 'bubble_sort_by' do
  it 'returns a sorted string array' do
    expect(bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }).to eql(%w[hi hey hello])
  end
end
