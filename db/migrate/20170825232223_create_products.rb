class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :desc
      t.string :image
      t.integer :price, null: false
      t.references :shop, foreign_key: true
    end
  end
end
