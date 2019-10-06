class Colum < ApplicationRecord
  validates :name, length: { maximum: 30 }
  validates :title, presence: true, length:{ maximum: 200 }
  validates :content, length: { in: 1..500 }
  has_many :comments, dependent: :destroy
end
