class AddProvinceRefToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :Province, null: false, foreign_key: true
  end
end
