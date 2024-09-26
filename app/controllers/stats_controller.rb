class StatsController < ApplicationController
    def index
        @stats = Stat.all
        render 'stats/index'
    end
    
    def create
        stat = Stat.new(
            total_points: 50,
            minutes_played: 30
        )
        p stat
        stat.save
        render json: {name: 'hello'}
    end
end
