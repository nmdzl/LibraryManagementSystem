class Book < ApplicationRecord
  belongs_to :user
  has_many :book_histories
  validates :title,
            :presence => true
  validates :summary,
            :presence => true
  validates :isbn,
            :presence => true,
            :uniqueness => true
end
