class Info < ApplicationRecord
  has_one :blok
  has_many :comments
end
