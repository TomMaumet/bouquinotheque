class ReadingsController < ApplicationController

  def index
    @readings = Reading.where(user: current_user)
  end

end
