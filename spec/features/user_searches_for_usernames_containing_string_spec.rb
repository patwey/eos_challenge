require 'rails_helper'

feature 'User searches for usernames containing string' do
  scenario 'with no matches' do
    skip
    search_for 'x'

    within '#resultsList' do
      expect(page).to have_content '0'
    end
  end

  scenario 'with a match' do
    skip
    create_user 'Doug'
    search_for 'd'

    within '#resultsList' do
      expect(page).to have_content '9'
    end
  end

  def search_for(str)
    visit root_path
    fill_in 'strInput', with: str
    click_button 'Get Result'
  end

  def create_user(name)
    User.create!(name: name)
  end
end
