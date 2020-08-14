class GroupsController < ApplicationController
    before_action :set_group, only: :destroy

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.school_id = params[:school_id]
    if @group.save
      redirect_to school_path(params["school_id"])
    else
      render :new
    end
  end

  def destroy
    @group.delete
    redirect_to school_path(params["school_id"])
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name)
  end

end
