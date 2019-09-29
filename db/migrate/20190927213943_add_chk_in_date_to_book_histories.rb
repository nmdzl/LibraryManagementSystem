class AddChkInDateToBookHistories < ActiveRecord::Migration[5.1]
  def change
    add_column :book_histories, :chk_in_date, :datetime
  end
end
