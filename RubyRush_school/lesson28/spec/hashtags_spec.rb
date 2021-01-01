require '../lib/hashtags.rb'
require 'rspec'

describe 'Hashtags' do
  it 'should do ok for one hashtag' do
    expect(Hashtags.hashtags('#asd')).to eq ['#asd']
  end
end

describe 'Hashtags' do
  it 'should do ok for array_hashs' do
    expect(Hashtags.hashtags('#asd#abv').class).to eq(Array)
  end
end

describe 'Hashtags' do
  it 'should do ok for rus_lang' do
    expect(Hashtags.hashtags('#йцу#фыв')).to eq ['#йцу','#фыв']
  end
end

describe 'Hashtags' do
  it 'should do ok for _' do
    expect(Hashtags.hashtags('#asd_asd')).to eq ['#asd_asd']
  end
end

describe 'Hashtags' do
  it 'should do ok for -' do
    expect(Hashtags.hashtags('#asd-asd')).to eq ['#asd-asd']
  end
end

describe 'Hashtags' do
  it 'should does not ok for ?' do
    expect(Hashtags.hashtags('#asd?asd')).to eq ['#asd']
  end
end

describe 'Hashtags' do
  it 'should does not ok for ?' do
    expect(Hashtags.hashtags('#asd!asd')).to eq ['#asd']
  end
end
