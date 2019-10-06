class Colum < ApplicationRecord
  validates :name, length: { maximum: 30 }
  validates :title, presence: true, length:{ maximum: 30 }
  validates :content, length: { in: 1..500 }
end
