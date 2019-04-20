class Headend < ApplicationRecord
  has_many :nodes, inverse_of: :headend
end
