class AddIsRequestedToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :is_requested, :boolean
  end
end
