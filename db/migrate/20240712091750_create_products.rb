class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.text :name
      t.text :ingredients
      t.text :allergens
      t.text :serving
      t.string :price
      t.string :category

      t.timestamps
    end
  end
end
