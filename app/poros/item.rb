class Item
  attr_reader :id, :name

  def initialize(data)
    @id   = data[:id]
    @name = data[:attributes][:name]
  end
end