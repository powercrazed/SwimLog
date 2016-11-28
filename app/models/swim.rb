class Swim < ActiveRecord::Base
  validates :when, :duration, :distance, :pool, presence: true
  validates :when, uniqueness: true

  belongs_to :pool
end
