class Pool < ApplicationRecord
  validates :name, :location, :length, presence: true
  validates :name, uniqueness: true

end
