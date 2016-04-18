require 'rails_helper'

RSpec.describe Result, type: :model do
  def valid_result
    Result.new(sum: 10)
  end

  it 'is valid' do
    expect(valid_result).to be_valid
  end

  it 'is invalid without a unique sum' do
    valid_result.save

    expect(valid_result).not_to be_valid
  end

  it 'is invalid without a sum greater than or equal to zero' do
    result = valid_result
    result.sum = -1

    expect(result).not_to be_valid
  end

  describe '#find_or_create_from_name_lengths' do
    it 'exists' do
      expect(Result).to respond_to(:find_or_create_from_name_lengths)
    end

    it 'creates a result from an array of name lengths' do
      result_count = Result.count
      Result.find_or_create_from_name_lengths([1, 2])

      expect(Result.count).to eq(result_count + 1)
    end

    it 'does not create a result for an existing sum' do
      result_count = Result.count

      Result.find_or_create_from_name_lengths([1, 2])
      Result.find_or_create_from_name_lengths([1, 2])

      expect(Result.count).to eq(result_count + 1)
    end

    it 'returns a result' do
      result = Result.find_or_create_from_name_lengths([1, 2])

      expect(result.class).to eq(Result)
    end
  end
end
