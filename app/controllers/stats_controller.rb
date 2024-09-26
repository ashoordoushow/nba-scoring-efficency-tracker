class StatsController < ApplicationController
    def index
        @stats = Stat.all
        render 'stats/index'
    end
end
