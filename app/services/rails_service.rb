class RailsService
  def merchant_items(merchant_id)
    get_url("/api/v1/merchants/#{merchant_id}/items")
  end

  def merchants_index
    get_url("/api/v1/merchants")
  end

  def merchant_show(merchant_id)
    get_url("/api/v1/merchants/#{merchant_id}")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "http://localhost:3000")
  end
end