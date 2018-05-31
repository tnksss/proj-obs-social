class DashboardController < ApplicationController
    def index
        @sessions = Session.all
    end
end
