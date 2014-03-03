require('rspec')
require('allergies')

describe('allergies') do
  it('returns eggs for a score of 1') do
    allergies(1).should(eq(['eggs']))
  end

  it('returns an array of peanuts & eggs for a score of 3') do
    allergies(3).should(eq(['peanuts','eggs']))
  end
  it('returns an array of all allegergies for a score of ') do
    allergies(255).should(eq(['cats','pollen','chocolate','tomatoes','strawberries','shellfish','peanuts','eggs']))
  end
  it('returns an array of strawberries, peanuts, and eggs for a score of 11') do
    allergies(11).should(eq(['strawberries', 'peanuts', 'eggs']))
  end

end
