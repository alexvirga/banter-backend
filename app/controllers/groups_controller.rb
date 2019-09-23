class GroupsController < ApplicationController
  def index
    groups = Group.all
    render json: groups, include: [:users => { :only => [:username, :id] }]
  end

  def create
    group = Group.new(group_code: params[:group_code], bill_total: params[:bill_total])
  end
end
