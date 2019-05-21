class RemoveNameFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :name, :string
    remove_column :events, :location, :string
  end
end
