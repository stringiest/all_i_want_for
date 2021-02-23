# frozen_string_literal: true

require 'rails_helper'

feature 'authentication' do
  scenario 'user logs in successfully' do
    create_user_in_test_db
    login_successfully

    expect(current_path).to eq('/')
    expect(page).to have_content('Signed in successfully')
  end

  scenario 'user enters incorrect email' do
    create_user_in_test_db

    visit('/sessions/new')

    fill_in('email', with: 'wrongemail@makers.com')
    fill_in('password', with: '2020')
    click_button('Sign In')

    expect(current_path).to eq('/sessions')
    expect(page).to have_content('Invalid login details')
  end

  scenario 'user enters incorrect password' do
    create_user_in_test_db

    visit('/sessions/new')

    fill_in('email', with: 'lucyjstringer@gmail.com')
    fill_in('password', with: 'wrongpassword')
    click_button('Sign In')

    expect(current_path).to eq('/sessions')
    expect(page).to have_content('Invalid login details')
  end

  scenario 'user logs out successfully' do
    create_user_in_test_db
    login_successfully
    click_link('Sign Out')

    expect(current_path).to eq('/sessions/new')
    expect(page).to have_content('Successfully signed out')
  end
end
