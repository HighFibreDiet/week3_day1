require('rspec')
require('fizzbuzz')

describe('fizzbuzz') do
  it('will output fizz if the number is divisible by 3') do
    fizzbuzz(3).should(eq([1,2,'fizz']))
  end

  it('will output buzz if the number is divisible by 5') do
    fizzbuzz(5).should(eq([1,2,'fizz',4,'buzz']))
  end

  it('will output fizzbuzz if the number is divisible by 5 and 3') do
    fizzbuzz(15).should(eq([1,2,'fizz',4,'buzz','fizz',7,8,'fizz','buzz',11,'fizz',13,14,'fizzbuzz']))
  end

  it('will output the number if its not divisible by 3 or 5') do
    fizzbuzz(7).should(eq([1,2,'fizz',4,'buzz','fizz',7]))
  end
end
