class DashboardController < ApplicationController

  def index
    @publications = Publication.where(user_id: params[:id])
  end

   def type
    @publications = Publication.where(type_property: params[:type])
  end

end