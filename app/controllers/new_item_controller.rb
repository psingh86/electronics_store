class NewItemController < ApplicationController
  def index
    @resultSet = Product.all.where("created_at >= ?", Time.zone.now.beginning_of_day)
  end
end
