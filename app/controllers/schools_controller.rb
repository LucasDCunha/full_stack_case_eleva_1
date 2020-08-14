class SchoolsController < ApplicationController
  before_action :set_school, only: %i[edit show destroy update]

  def index
    @schools = School.all
  end

  def show
  end

  def new
    @school = School.new
  end

  def create
    @school = School.new(school_params)
    # @school = School.new(name: params[:name])
    if @school.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @school.update(school_params)
      redirect_to school_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    @school.delete
    redirect_to schools_path
  end

  private

  def set_school
    @school = School.find(params[:id])
  end

  def school_params
    params.require(:school).permit(:name)
  end

end
