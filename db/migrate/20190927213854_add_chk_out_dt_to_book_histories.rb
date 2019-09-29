class AddChkOutDtToBookHistories < ActiveRecord::Migration[5.1]
  def change
    add_column :book_histories, :chk_out_dt, :datetime
  end
end
