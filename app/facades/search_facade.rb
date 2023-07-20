class SearchFacade
  def all_merchants
    service = RailsService.new

    json = service.merchants_index

    @merchants = json[:data].map { |details| Merchant.new(details) }
  end

  def merchant_items_index(merchant_id)
    service = RailsService.new

    json = service.merchant_items(merchant_id)

    @merchant_items_data = json[:data].map { |details| Item.new(details) }
  end

  def find_merchant(merchant_id)
    service = RailsService.new

    json = service.merchant_show(merchant_id)

    @merchant = Merchant.new(json[:data])
  end
end