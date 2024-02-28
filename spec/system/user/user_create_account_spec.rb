require 'rails_helper'

describe 'User creates an account' do
  it 'from the home page' do
    visit root_path
    click_on 'Create Account'
    fill_in 'Name', with: 'Lucas Vasques'
    fill_in 'Email', with: 'lucas@email.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Sign up'

    expect(page).to have_content 'Welcome! You have signed up successfully.'
    expect(page).to have_content 'lucas@email.com'
    expect(page).to have_button 'Sair'
    expect(User.count).to eq 1
  end
end
