class AddColourToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :color, :string
  end
end

