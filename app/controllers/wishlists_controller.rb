class WishlistsController < ApplicationController
  before_action :set_user
  before_action :set_wishlist, only: %i[show edit update destroy]

  def index
    @wishlists = @user.wishlists
  end

  def show
  end

  def new
    @wishlist = @user.wishlists.build
  end

  def edit
  end

  def create
    @wishlist = @user.wishlists.build(wishlist_params)

    respond_to do |format|
      if @wishlist.save
        format.html { redirect_to user_wishlist_path(@user, @wishlist), notice: "Wishlist criada com sucesso." }
        format.json { render :show, status: :created, location: [@user, @wishlist] }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wishlist.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @wishlist.update(wishlist_params)
        format.html { redirect_to user_wishlist_path(@user, @wishlist), notice: "Wishlist criada com sucesso." }
        format.json { render :show, status: :ok, location: [@user, @wishlist] }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wishlist.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @wishlist.destroy!

    respond_to do |format|
      format.html { redirect_to user_wishlists_path(@user), status: :see_other, notice: "Wishlist deletada com sucesso." }
      format.json { head :no_content }
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_wishlist
    @wishlist = @user.wishlists.find(params.expect(:id))
  end

  def wishlist_params
    params.require(:wishlist).permit(:nome)
  end
end
