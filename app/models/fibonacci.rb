class Fibonacci
  def self.sum_of_squares(nums)
    nums.reduce(0) { |sum, n| sum += nth_num(n) ** 2 }
  end

  def self.nth_num(n)
    return if n < 0
    return 0 if n == 0
    return 1 if n == 1

    nth_num(n - 1) + nth_num(n - 2)
  end
end
