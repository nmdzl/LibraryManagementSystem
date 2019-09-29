class AddRequestedByToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :requested_by, :integer
  end
end
