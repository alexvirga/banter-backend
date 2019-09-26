class GroupsController < ApplicationController
  def index
    group = Group.all
    render json: group, include: [:users => { :only => [:username, :id] }]
  end

  def create
    group = Group.create(group_code: params[:group_code], bill_total: params[:bill_total], leader_id: params[:leader_id], tip_percentage: params[:tip_percentage])
    render json: group, include: [:users => { :only => [:username, :id] }]
  end
end
