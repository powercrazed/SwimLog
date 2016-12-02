class Pool < ActiveRecord::Base
  validates :name, :location, :length, presence: true
  validates :name, uniqueness: true

end
