require 'rails_helper'

RSpec.describe Fibonacci, type: :model do
  describe '#sum_of_squares' do
    it 'exists' do
      expect(Fibonacci).to respond_to(:sum_of_squares)
    end

    it 'handles empty arrays' do
      expect(Fibonacci.sum_of_squares([])).to eq(0)
    end

    it 'gives the sum of fib squares for an array of one number' do
      expect(Fibonacci.sum_of_squares([3])).to eq(4)
    end

    it 'gives the sum of fib squares for an array of numbers' do
      expected_sum = (2 ** 2) + (3 ** 2) + (5 ** 2)

      expect(Fibonacci.sum_of_squares([3, 4, 5])).to eq(expected_sum)
    end
  end

  describe '#nth_num' do
    it 'exists' do
      expect(Fibonacci).to respond_to(:nth_num)
    end

    it 'gives the first number in the sequence' do
      expect(Fibonacci.nth_num(0)).to eq(fibonacci_sequence.first)
    end

    it 'gives the second number in the sequence' do
      expect(Fibonacci.nth_num(1)).to eq(fibonacci_sequence[1])
    end

    it 'gives the 7th number in the sequence' do
      expect(Fibonacci.nth_num(6)).to eq(fibonacci_sequence[6])
    end
  end
end
