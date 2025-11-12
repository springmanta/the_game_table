class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.decimal :price, precision: 10, scale: 2, null: false
      t.string :sku
      t.integer :stock_quantity, default: 0
      t.boolean :active, default: true
      t.integer :min_players
      t.integer :max_players
      t.integer :min_play_time
      t.integer :min_age
      t.decimal :complexity, precision: 3, scale: 2
      t.string :publisher
      t.string :designer
      t.string :year_published

      t.timestamps

      t.index :sku, unique: true
      t.index :active
    end
  end
end
