class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.string :authors
      t.string :language
      t.string :published
      t.string :edition
      t.string :associated_library
      t.string :subject
      t.text :summary
      t.boolean :special_collection

      t.timestamps
    end
  end
end
