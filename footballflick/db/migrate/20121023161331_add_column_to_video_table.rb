class AddColumnToVideoTable < ActiveRecord::Migration
  def change
    add_column :videos, :icon, :string
    add_column :videos, :description, :string
  end
end
