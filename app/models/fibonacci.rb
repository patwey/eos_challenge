class Fibonacci
  def self.sum_of_squares(nums)
    nums.reduce(0) { |sum, n| sum += nth_num(n) ** 2 }
  end

  def self.nth_num(n, nums = [0, 1])
    return if n < 0
    return nums[0] if n == 0
    return nums[1] if n == 1

    unless nums[n]
      nums << nth_num(n - 1, nums) + nth_num(n - 2, nums)
    end
    
    nums[n]
  end
end
