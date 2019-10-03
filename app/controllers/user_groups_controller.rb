class UserGroupsController < ApplicationController
  def index
    usergroup = UserGroup.all
    render json: usergroup, include: [:user, :group => { :only => [:group_code]
  end

  def create
    usergroup = UserGroup.create(group_id: params[:group_id], user_id: params[:user_id])
    render json: usergroup, include: [:user]
  end

  def update
    usergroup = UserGroup.find(params[:id])
    usergroup.update(user_payment_amt: params[:user_payment_amt])
    render json: usergroup, include: [:user]
  end
end
