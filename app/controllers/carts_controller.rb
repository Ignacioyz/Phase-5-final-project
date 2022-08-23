class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :update, :destroy]


  # custom method 
  
  def add_to_cart 
    # get the current user from the session 
    # if the cart doesn't exist, then create a new cart
cart = Cart.find_by(user_id: session[:user_id], purchased: false )
    # load from db, the painting the user is trying to purchase.
if cart == nil 
  cart = Cart.create(user_id: session[:user_id])
    # update the painting to be in the user's cart 
end 
painting = Painting.find(params[:id])
# Update the painting to be in the user's cart
painting.update(cart_id: cart.id)
  end


  # GET /carts
  def index
    @carts = Cart.all

    render json: @carts
  end

  # GET /carts/1
  def show
    render json: @cart
  end

  # POST /carts
  def create
    @cart = Cart.new(cart_params)

    if @cart.save
      render json: @cart, status: :created, location: @cart
    else
      render json: @cart.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /carts/1
  def update
    if @cart.update(cart_params)
      render json: @cart
    else
      render json: @cart.errors, status: :unprocessable_entity
    end
  end

  # DELETE /carts/1
  def destroy
    @cart.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_params
      params.permit(:user_id, :purchased, :purchased_on)
    end
end
