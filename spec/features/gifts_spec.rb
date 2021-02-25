# frozen_string_literal: true

require 'rails_helper'

feature 'gifts' do
    scenario 'user can sign in, make list and add a gift to that list' do
        login_and_make_list
        click_link('Edit')
        click_link('Add Gift')
        fill_in('gift_name', with: 'Vintage teapot')
        fill_in('gift_url', with: 'www.example.com')
        fill_in('gift_notes', with: 'Any chintzy teapot with gold bits!')
    
        expect(current_path).to eq('/lists/1')
        expect(page).to have_content('Any chintzy teapot with gold bits!')
    end
end