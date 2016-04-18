require 'fibonacci'

class Result < ActiveRecord::Base
  validates :sum, uniqueness: true,
                  numericality: { greater_than_or_equal_to: 0 }

  def self.find_or_create_from_name_lengths(lengths)
    sum = Fibonacci.sum_of_squares(lengths)
    find_or_create_by(sum: sum)
  end
end
