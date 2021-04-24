class OrderDetailsController < InheritedResources::Base

  private

    def order_detail_params
      params.require(:order_detail).permit(:product_id, :quantity, :price, :order_id)
    end

end
