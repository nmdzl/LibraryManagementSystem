class Student < ApplicationRecord
  has_many :books
  has_many :libraries
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
  validates :overdue_fine,
            :numericality => {:greater_than_or_equal_to => 0},
            :allow_nil => true
end
