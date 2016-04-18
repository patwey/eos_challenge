require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#unique_lengths_of_names_including_str' do
    it 'exists' do
      expect(User).to respond_to(:unique_lengths_of_names_including_str)
    end

    it 'returns the unique lengths of all names that include the str, case insensitive' do
      User.create!(name: 'Lena')
      User.create!(name: 'james')
      User.create!(name: 'amJes')
      User.create!(name: 'Mr. Johnson')
      matched_user_name_lengths = User.unique_lengths_of_names_including_str('j')

      expect(matched_user_name_lengths).to eq([5, 11])
    end
  end
end
