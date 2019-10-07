class Library < ApplicationRecord
  #belongs_to :university
  has_many :librarians

  validates :name,
            :presence => true
  validates :location,
            :presence => true,
            :length => {:maximum => 140}
  validates :max_day,
            :presence => true,
            :numericality => {:only_integer => true, :greater_than => 0}
  validates :overdue_fine,
            :presence => true,
            :numericality => {:greater_than => 0}
end
