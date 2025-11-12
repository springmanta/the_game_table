class AddMaxPlayTimeToProducts < ActiveRecord::Migration[8.0]
  def change
    add_column :products, :max_play_time, :integer
  end
end
