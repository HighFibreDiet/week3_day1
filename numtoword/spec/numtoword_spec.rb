require('rspec')
require('numtoword.rb')

describe('num_to_word') do
  it('will convert the number 2 into a string of "two"') do
    num_to_word(2).should(eq('two'))
  end

  it('will convert 2426 into a string') do
    num_to_word(2426).should(eq('two thousand four hundred twenty six'))
  end
end
