class Librarian < ApplicationRecord
  has_many :books
  belongs_to :library
  before_save { self.email = email.downcase }
  validates :name,
            :presence => true
  validates :email,
            :presence => true,
            :uniqueness => {:message => "Email already exists"},
            :email_format => {:message => "Email address is not valid"}
  validates :password,
            :length => {:minimum => 6 },
            :presence => {:message => "Please enter password"},
            :allow_nil => true
  has_secure_password
end
