require 'rspec'
require_relative '../solver'

describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns the factorial of a positive integer' do
      expect(solver.factorial(5)).to eq(120)
    end

    it 'returns 1 when the input is 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'raises an exception for negative integers' do
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns the reversed string' do
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" for numbers divisible by 3' do
      expect(solver.fizzbuzz(6)).to eq('fizz')
    end

    it 'returns "buzz" for numbers divisible by 5' do
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'returns "fizzbuzz" for numbers divisible by both 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns the number as a string for any other case' do
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end
