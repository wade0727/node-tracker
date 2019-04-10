class Node < ApplicationRecord
  belongs_to :user
  belongs_to :headend
  validates :node, presence: true, uniqueness: true, length: { minimum: 4, maximum: 8 }
  has_many_attached :documents
end
