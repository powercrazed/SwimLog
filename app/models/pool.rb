class Pool < ActiveRecord::Base
  validates :name, :location, :length, presence: true
  validates :name, uniqueness: true
  
  has_many :swim, :inverse_of => :pool
end
