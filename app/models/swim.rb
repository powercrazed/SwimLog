class Swim < ApplicationRecord
  validates :when, :duration, :distance, :pool, presence: true
  validates :when, uniqueness: true

  belongs_to :pool

  def duration_string
    self.duration ? Time.at(self.duration).utc.strftime("%H:%M:%S") : nil
  end

  def duration_string=(duration_str)
    self.duration = Time.parse(duration_str).seconds_since_midnight
  end

  def avg_speed
    (self.distance.to_f / self.duration.to_f).round(3)
  end
end
