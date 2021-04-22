class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.string :manufacturer
      t.string :source
      t.float :price
      t.bollean :isSale
      t.string :image

      t.timestamps
    end
  end
end
