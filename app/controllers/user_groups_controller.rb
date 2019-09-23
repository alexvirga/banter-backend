class UserGroupsController < ApplicationController
  def index
    usergroup = UserGroup.all
    render json: usergroup, include: [:user]
  end

  def create
    usergroup = UserGroup.create(group_id: params[:group_id], user_id: params[:user_id])
    render json: usergroup, include: [:user]
  end
end
