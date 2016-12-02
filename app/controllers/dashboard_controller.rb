class DashboardController < ApplicationController

  # GET /
  def index
    @swims = Swim.all.map { |swim| [swim.when, swim.avg_speed]  }.to_h

    pool_lengths = Pool.uniq.pluck(:length)
    @swimsbypool = []
    pool_lengths.each do |pl|
      @swimsbypool.push(
        name: "#{pl}m",
        data: Swim.joins(:pool).where("length = #{pl}").map { |swim| [swim.when, swim.avg_speed] }.to_h
      )
    end

  end
end
