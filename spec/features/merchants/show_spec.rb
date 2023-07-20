require 'rails_helper'

RSpec.describe '/merchants/:id', type: :feature do
  describe 'merchant show' do
    it 'displays all of the merchants items', :vcr do
      visit merchant_path(1)

      ## Question: how could we retrieve one particular item?
      expect(page).to have_content('Item Nemo Facere')
    end
  end
end