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
        stat.save
        render json: {name: 'hello'}
    end

    def show
        @stat = Stat.find_by(id: params[:id])
        render 'stats/show'
    end
end

  
