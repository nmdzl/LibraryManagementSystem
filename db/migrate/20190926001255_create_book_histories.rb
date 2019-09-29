class CreateBookHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :book_histories do |t|
      t.timestamps
    end
  end
end
