class AddIsDeletedToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :is_deleted, :boolean
  end
end
