class UsersController < ApplicationController

  def index
    @users = User.all
  end

  # GET /paliwkos/1
  def grantadmin
    # id = User.where(id:@user.id).pluck(:id).last
    # user = User.find(id)
    User.find(@users.id)
    user.update_attribute(:admin, true)
  end

end
