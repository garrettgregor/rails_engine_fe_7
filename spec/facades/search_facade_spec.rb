require 'rails_helper'

describe SearchFacade do
  context 'class methods' do
    context '#all_merchants' do
      it 'returns all merchants', :vcr do
        all_merchants = SearchFacade.new.all_merchants
        expect(all_merchants).to be_an(Array)
        expect(all_merchants[0]).to be_a(Merchant)
        expect(all_merchants[0].name).to be_a(String)
        expect(all_merchants[0].id).to be_a(String)
      end
    end

    context '#merchant_items_index' do
      it "returns a specific merchant's items", :vcr do
        merchants_items = SearchFacade.new.merchant_items_index(1)
        expect(merchants_items).to be_an(Array)
        expect(merchants_items[0]).to be_an(Item)
        expect(merchants_items[0].name).to be_a(String)
        expect(merchants_items[0].id).to be_a(String)
      end
    end

    context '#find_merchant' do
      it 'returns a specific merchant', :vcr do
        merchant = SearchFacade.new.find_merchant(1)
        expect(merchant).to be_a(Merchant)
        expect(merchant.name).to be_a(String)
        expect(merchant.id).to be_a(String)
      end
    end
  end
end