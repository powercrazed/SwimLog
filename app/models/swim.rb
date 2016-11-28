class Swim < ActiveRecord::Base
  validates :when, :duration, :distance, presence: true
  validates :when, uniqueness: true

  belongs_to :pool
end
