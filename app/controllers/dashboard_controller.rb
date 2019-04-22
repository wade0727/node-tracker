class DashboardController < ApplicationController

  def index
    @nodes = Node.all
    @headends = Headend.all
    @user = User.all
    @node = Node.upcoming
  end

end
