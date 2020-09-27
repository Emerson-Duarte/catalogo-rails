class Book < ApplicationRecord
  belongs_to :genre

  validates :title, :synopsis, :genre_id, :value, :page, presence: true
  validates :value, :numericality => { :greater_than => 0 }

end
