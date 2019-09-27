class CreateLibraries < ActiveRecord::Migration[5.1]
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :university
      t.string :location
      t.integer :max_day
      t.integer :overdue_fine

      t.timestamps
    end
  end
end
