class UsersController < ApplicationController

  swagger_controller :users, "Users Managment"


  swagger_api :index do
    summary "Fetches all User items"
    notes "This lists all the active users"
    param :query, :page, :integer, :required, "Page number"
    param :path, :nested_id, :integer, :optional, "Team Id"
    response :unauthorized
    response :not_acceptable, "The request you made is not acceptable"
    response :requested_range_not_satisfiable
  end

  def index
    render :json => {:message => 'OK'}
  end

end