require 'rails_helper'

describe RailsService do
  describe 'class methods' do
    describe '#merchant_items' do
      it 'returns all of a merchants items', :vcr do
        results = RailsService.new.merchant_items(1)
        expect(results).to be_a(Hash)

        items = results[:data]
        expect(items).to be_an(Array)

        items.each do |item|
          expect(item).to have_key(:id)
          expect(item[:id]).to be_a(String)

          expect(item).to have_key(:attributes)
          expect(item[:attributes]).to be_a(Hash)

          attributes = item[:attributes]

          expect(attributes).to have_key(:name)
          expect(attributes[:name]).to be_a(String)

          expect(attributes).to have_key(:description)
          expect(attributes[:description]).to be_a(String)

          expect(attributes).to have_key(:unit_price)
          expect(attributes[:unit_price]).to be_a(Float)

          expect(attributes).to have_key(:merchant_id)
          expect(attributes[:merchant_id]).to be_an(Integer)
        end
      end
    end

    describe '#merchants_index' do
      it 'returns all merchants', :vcr do
        results = RailsService.new.merchants_index
        expect(results).to be_a(Hash)

        merchants = results[:data]
        expect(merchants).to be_an(Array)

        merchants.each do |merchant|
          expect(merchant).to have_key(:id)
          expect(merchant[:id]).to be_a(String)

          expect(merchant).to have_key(:attributes)
          expect(merchant[:attributes]).to be_a(Hash)

          attributes = merchant[:attributes]

          expect(attributes).to have_key(:name)
          expect(attributes[:name]).to be_a(String)
        end
      end
    end

    describe '#merchant_show' do
      it 'returns a specific merchant', :vcr do
        results = RailsService.new.merchant_show(1)
        expect(results).to be_a(Hash)

        merchant = results[:data]

        expect(merchant).to have_key(:id)
        expect(merchant[:id]).to be_a(String)

        expect(merchant).to have_key(:attributes)
        expect(merchant[:attributes]).to be_a(Hash)

        attributes = merchant[:attributes]

        expect(attributes).to have_key(:name)
        expect(attributes[:name]).to be_a(String)
      end
    end
  end
end