require 'rails_helper'

RSpec.describe Merchant do
  it "exists" do
    attributes = {
      id: "1",
      type: "merchant",
      attributes: {
        name: "Schroeder-Jerde"
        }
      }

    merchant = Merchant.new(attributes)

    expect(merchant).to be_a(Merchant)
    expect(merchant.name).to eq("Schroeder-Jerde")
    expect(merchant.id).to eq("1")
  end
end