class AddRequestedByToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :requested_by, :boolean
  end
end
