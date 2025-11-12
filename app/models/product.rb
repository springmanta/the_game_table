class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :sku, uniqueness: true, allow_nil: true
  validates :stock_quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :min_players, numericality: { only_integer: true, greater_than: 0 }, allow_nil: true
  validates :max_players, numericality: { only_integer: true, greater_than_or_equal_to: :min_players }, allow_nil: true

  scope :active, -> { where(active: true) }
  scope :in_stock, -> { where("stock_quantity > ?", 0) }

  def in_stock?
    stock_quantity > 0
  end

  def player_count
    return "#{min_players}+" if min_players && !max_players
    return "#{min_players}-#{max_players}" if min_players && max_players
  end
end
