class DashboardController < ApplicationController
    def index
        @sessions = Session.all
        @councilmen = Councilman.all
        @projects = Project.all
    end
end
