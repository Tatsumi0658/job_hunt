class Comment < ApplicationRecord
  validates :comment, length: { in: 1..1000 }
  belongs_to :colum
end
