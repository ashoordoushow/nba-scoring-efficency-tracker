class StatsController < ApplicationController
    def index
        @stats = Stat.all
        render 'stats/index'
    end
    
    def create
        @stat = Stat.new(
            total_points: params[:total_points],
            minutes_played: params[:minutes_played]
        )
        @stat.save
        render 'stats/show'
    end

    def show
        @stat = Stat.find_by(id: params[:id])
        render 'stats/show'
    end

    def update
        @stat = Stat.find_by(id: params[:id])
        @stat.update!(
            total_points: params[:total_points] || @stat.total_points,
            minutes_played: params[:minutes_played] || @stat.minutes_played,
        )
        @stat.save
        render 'stats/show'
    end
end

# def update
#     @photo = Photo.find_by(id: params[:id])
#     @photo.update(
#       name: params[:name] || @photo.name,
#       width: params[:width] || @photo.width,
#       height: params[:height] || @photo.height,
#     )
#     render :show
#   end

  
