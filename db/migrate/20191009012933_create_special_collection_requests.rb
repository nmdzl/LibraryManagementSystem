class CreateSpecialCollectionRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :special_collection_requests do |t|
      t.integer :student_id
      t.integer :book_id

      t.timestamps
    end
  end
end
