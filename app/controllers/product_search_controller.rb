class ProductSearchController < ApplicationController
  def index
    if params[:search].blank? && params[:category].blank?
      redirect_to(root_path, alert: 'Empty field!') and return
    elsif params[:search].blank? && !params[:category].blank?
      cat = params[:category].downcase
      products = Product.all.where(Category_id: cat)
      @resultSet = products
    elsif !params[:search].blank? && params[:category].blank?
      parameter = params[:search].downcase
      @resultSet = Product.all.where('lower(name) like ?', "%#{parameter}%")
    else
      cat = params[:category].downcase
      parameter = params[:search].downcase
      products = Product.all.where(Category_id: cat)
      @resultSet = products.where('lower(name) like ?', "%#{parameter}%")
    end
  end
end
