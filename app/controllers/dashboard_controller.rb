class DashboardController < ApplicationController
    def index
        @meetings = Meeting.all
        @councilmen = Councilman.all
        @projects = Project.all
    end
end
