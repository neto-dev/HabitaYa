class SearchController < ApplicationController
 
  def index
  	@ubication = Ubication.where('city LIKE ?', "%#{params[:q]}%")
  end

end
