require("rspec")
require("titlecase")

describe('titlecase') do
  it('capitalizes the first letter of every normal word') do
    titlecase('goodnight moon').should(eq('Goodnight Moon'))
  end
  it('does not capitalize special words') do
    titlecase('war and peace').should(eq('War and Peace'))
  end
  it('does not capitalize special words unless it is the first in the title') do
    titlecase('of mice and men').should(eq('Of Mice and Men'))
  end
end
