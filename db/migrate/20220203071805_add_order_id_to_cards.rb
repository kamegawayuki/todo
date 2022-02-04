class AddOrderIdToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :order_id, :integer
  end
end
