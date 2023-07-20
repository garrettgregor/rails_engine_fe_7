require 'rails_helper'

RSpec.describe '/merchants', type: :feature do
  describe 'merchants index' do
    it 'displays all of the merchants', :vcr do
      # As a visitor,
      # When I visit '/merchants'
      # I should see a list of merchants by name
      # and when I click the merchant's name
      # I should be on page '/merchants/:id'
      # And I should see a list of items that merchant sells.
      visit merchants_path

      expect(page).to have_content('Merchants')
      ## Question: is there a better way to link to an api where we might not know id numbers?
      expect(page).to have_link('Schroeder-Jerde', href: merchant_path(1))
    end
  end
end