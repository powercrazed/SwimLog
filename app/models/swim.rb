class Swim < ActiveRecord::Base
  validates :when, :duration, :distance, :pool, presence: true
  validates :when, uniqueness: true

  belongs_to :pool

  def duration_string
    self.duration ? Time.at(self.duration).utc.strftime("%H:%M:%S") : nil
  end

  def duration_string=(duration_str)
    self.duration = Time.parse(duration_str).seconds_since_midnight
  end
end
