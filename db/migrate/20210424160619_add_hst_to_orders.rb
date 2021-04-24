class AddHstToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :HST, :float
  end
end
