class Swim < ActiveRecord::Base
  validates :start, :duration, :distance, presence: true
  validates :start, uniqueness: true
  belongs_to :pool, :inverse_of => :swim
end
