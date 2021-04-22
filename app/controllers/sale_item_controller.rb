class SaleItemController < ApplicationController
  def index
    @resultSet = Product.all.where(isSale: true)

  end
end
