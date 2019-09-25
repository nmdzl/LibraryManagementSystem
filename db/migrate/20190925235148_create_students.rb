class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :email
      t.string :name
      t.string :password
      t.string :educational_level
      t.string :university
      t.integer :max_book

      t.timestamps
    end
  end
end
