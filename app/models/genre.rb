class Genre < ApplicationRecord
  validates :description, presence: true
  has_many :books
end
