# frozen_string_literal: true

require 'rails_helper'

feature 'lists' do
  scenario 'user can sign in and make a list' do
    login_and_make_list

    expect(current_path).to eq('/lists')
    expect(page).to have_content('2021 Christmas List')
  end

  scenario 'user can edit the name of a list' do
    login_and_make_list
    click_link('Edit')
    fill_in('name', with: '')
    fill_in('name', with: '2021 Birthday list')

    click_button('Submit')

    expect(current_path).to eq('/lists')
    expect(page).to have_content('2021 Birthday list')
    expect(page).to have_content('25/12/2021')
  end

  scenario 'user can edit the event date of a list' do
    login_and_make_list
    click_link('Edit')
    fill_in('list_event_date', with: '')
    fill_in('list_event_date', with: '04/07/2021')

    click_button('Submit')

    expect(current_path).to eq('/lists')
    expect(page).to have_content('2021 Christmas List')
    expect(page).to have_content('04/07/2021')
  end

  xscenario 'user can delete a list' do
    login_and_make_list
    click_link('Delete list')
    click_button('ok')

    expect(current_path).to eq('/lists')
    expect(page).not_to have_content('2021 Christmas List')
  end

  scenario 'user cannot add list if not signed in' do
    visit('/lists')

    expect(page).to have_no_link('New List')
  end
end
