class CreateLibrarianSignupRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :librarian_signup_requests do |t|
      t.integer :librarian_id

      t.timestamps
    end
  end
end
