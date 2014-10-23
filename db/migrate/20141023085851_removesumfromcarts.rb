class Removesumfromcarts < ActiveRecord::Migration
  def change
    remove_column :carts, :sum, :integer
    add_column :carts, :count, :integer
  end
end
