class AddSumToCart < ActiveRecord::Migration
  def change
    add_column :carts, :sum, :integer
  end
end
