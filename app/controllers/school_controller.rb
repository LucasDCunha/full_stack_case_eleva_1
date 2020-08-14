class SchoolController < ApplicationController
before_action :set_school, only: %i[edit show destroy update]

def index
  @schools = School.all
end

def show
end


private

def set_school
  @school = School.find(params[:id])
end

end
