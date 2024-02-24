require 'rails_helper'

describe 'User creates an account' do
  it 'from the home page' do
    visit root_path
    click_on 'Create Account'
    fill_in 'Name', with: 'Lucas Vasques'
    fill_in 'E-mail', with: 'lucas@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Create Account'

    expect(User.count).to eq 1
    expect(page).to have_content 'Account created'
  end
end
