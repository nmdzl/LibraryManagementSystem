class Book < ApplicationRecord
  has_many :book_histories
  belongs_to :library
  validates :title,
            :presence => true
  validates :subject,
            :presence => true
  # validates :isbn,
  #           :presence => true,
  #           :uniqueness => true
  validates :authors,
            :presence => true

end
