require('rspec')
require('pig_latin')

describe('pig_latin') do
  it('will add "ay" to then end of a word') do
    pig_latin('array').should(eq('arrayay'))
  end
  it('will move a word with a leading consonant to the end') do
    pig_latin('mouse').should(eq('ousemay'))
  end
  it('will move multiple leading consonants to the end') do
    pig_latin('streak').should(eq('eakstray'))
  end
  it('will move multiple leading consonants to the end') do
    pig_latin('blank').should(eq('ankblay'))
  end
  it('will move "y" if it is the first letter of a word') do
    pig_latin('year').should(eq('earyay'))
  end
  it('will move both "q" and "u" together if they are at the beginning') do
    pig_latin('queen').should(eq('eenquay'))
  end
  it('will move "q" and "u" together with any consonants before them if they are in the middle') do
    pig_latin('square').should(eq('aresquay'))
  end     
  it('will treat "y" as a vowel if it not the first letter of a word') do
    pig_latin('gym').should(eq('ymgay'))
  end

end
