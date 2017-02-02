class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
class RenameColorsInProducts < ActiveRecord::Migration
  def change
    rename_column :products, :color, :colour
  end
end