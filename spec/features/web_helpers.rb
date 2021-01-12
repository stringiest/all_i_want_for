# frozen_string_literal: true

def create_user_in_test_db
  User.create(
    username: 'stringiest',
    email: 'lucyjstringer@gmail.com',
    password: '2020',
    password_confirmation: '2020'
  )
end

def login_successfully
  visit('/sessions/new')

  fill_in('email', with: 'lucyjstringer@gmail.com')
  fill_in('password', with: '2020')
  click_button('Sign In')
end

def login_and_make_list
  create_user_in_test_db
  login_successfully

  click_link('New List')

  fill_in('name', with: '2021 Christmas List')
  fill_in('list_event_date', with: '25/12/2021')

  click_button('Submit')
end
