class MenuController < ApplicationController
  before_action :current_user
  def index
    if !@current_user
      @type=1
    else
      if @current_user.class.name=="User"
        @type=2
      else
        @type=3
      end
    end
  end
end
