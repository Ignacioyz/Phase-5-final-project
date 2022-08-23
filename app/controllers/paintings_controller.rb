class PaintingsController < ApplicationController
  before_action :set_painting, only: [:show, :update, :destroy]
  # bottom
  # before_action :admin_only, :except => :show, :index 
  
  

  # awesome method to return the user's chosen paintings 
  # user_chosen will be passed to routes.rb
  # def users_chosen
  #   cart = Cart.create(user_id: session[:user_id])
  #   paintings = Painting.find_by(cart_id: == cart.id)
  #   render json: paintings 
  # end 
  
  
  # GET /paintings
  def index
    @paintings = Painting.all
    render json: @paintings
  end

  # GET /paintings/1
  def show
    render json: @painting
  end

  # POST /paintings
  def create
  # first line creating the painting,
  # second line we're attaching the image that's attached using params
  # if is did it attach an image to a paining, if did render image to server, if not,
  # render error
    painting = Painting.create!(title: params[:title], description: params[:description], price: params[:price])
    if painting
      puts "CREATED"
      p painting
      puts "PARAMS"
      p params
      painting.image.attach(io: params[:file], filename: params[:name], content_type: params[:type])
      if painting.image.attached?
        render json: painting
      else
        render json: {message: "Failed to attach Image to Painting"}
      end
    else
      render json: {message: "Failed to create Painting"}
    end 
  end

  # PATCH/PUT /paintings/1
  def update
    if @painting.update(painting_params)
      render json: @painting
    else
      render json: @painting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /paintings/1
  def destroy
    painting = Painting.find(params[:id])
    painting.destroy
    # returns painting for so our server doesn't have to refetch the data and already knows 
    # what we don't want.
    render json: painting
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_painting
      @painting = Painting.find(params[:id])
    end

    #private method newly added 
    # def admin_only 
    #   unless current user.admin?
    #     redirect_to :back, :alert => "Access denied"
    #   end
    # end

    # Only allow a list of trusted parameters through.
    def painting_params
      params.permit(:title, :description, :price, :image_url, :cart_id, :id)
    end
end
