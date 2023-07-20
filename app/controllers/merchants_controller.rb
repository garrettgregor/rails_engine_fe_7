class MerchantsController < ApplicationController
  def index
    @merchants = SearchFacade.new.all_merchants
  end

  def show
    @merchant = SearchFacade.new.find_merchant(params[:id])
    @merchant_items = SearchFacade.new.merchant_items_index(params[:id])
  end
end