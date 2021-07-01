# frozen_string_literal: true

require 'rails_helper'

feature 'gifts' do
    scenario 'user can sign in, make list and add a gift to that list' do
        login_and_make_list
        add_gift_to_list
    
        expect(current_path).to eq('/lists/1')
        expect(page).to have_content('Any chintzy teapot with gold bits!')
    end

    xscenario 'user can delete a gift from a list' do
        login_and_make_list
        expect(current_path).to eq('/lists')
        add_gift_to_list
        expect(current_path).to eq('/lists/2')
        expect(page).to have_content('Any chintzy teapot with gold bits!')
        click_link('Remove gift')
        click_link('ok')
    
        expect(current_path).to eq('/lists/2')
        expect(page).to have_content('List details')
        expect(page).not_to have_content('Any chintzy teapot with gold bits!')
      end
end