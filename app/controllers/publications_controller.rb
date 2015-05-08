class PublicationsController < ApplicationController
  load_and_authorize_resource
  before_action :set_publication, only: [:show, :edit, :update, :destroy]

  # GET /publications
  # GET /publications.json
  def index
    @publications = Publication.all
  end

  # GET /publications/1
  # GET /publications/1.json
  def show
  end

  # GET /publications/new
  def new
    @publication = Publication.new
  end

  # GET /publications/1/edit
  def edit
  end

  # POST /publications
  # POST /publications.json
  def create
    @publication = Publication.new(publication_params)
    @publication.user_id = current_user.id
    respond_to do |format|
      if @publication.save
        format.html { redirect_to :controller => 'ubications', :action => "new", :id_pub => @publication.id }
        format.json { render :show, status: :created, location: @publication }
      else
        format.html { render :new }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publications/1
  # PATCH/PUT /publications/1.json
  def update
    respond_to do |format|
      if @publication.update(publication_params)
        @ubication = Ubication.find_by(publication_id: params[:id])
          format.html { redirect_to :controller => 'ubications', :action => "edit", :id => @ubication.id, :id_pub => @publication.id }
          format.json { render :show, status: :ok, location: @publication }
      else
        format.html { render :edit }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publications/1
  # DELETE /publications/1.json
  def destroy
    Ubication.delete_all(:publication_id => @publication.id)
    Image.delete_all(:publication_id => @publication.id)
    @publication.destroy
    respond_to do |format|
      format.html { redirect_to :controller => 'dashboard', :action => "index", :id => current_user.id }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publication
      @publication = Publication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publication_params
      params.require(:publication).permit(:title, :type_add, :type_property, :size, :price, :rooms, :bathrooms, :old, :floors, :floor_loc, :furnished, :kitchen, :mascot, :internet,:garage, :closets, :description, :date, :status, :user_id)
    end
end
