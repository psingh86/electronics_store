class AddUserRefToOrders < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :User, null: false, foreign_key: true
  end
end
