class WishilistItemsController < ApplicationController
  before_action :set_wishlist

  def create
    game = Game.find(params[:game_id])
    @wishlist.games << game unless @wishlist.games.include?(game)
    redirect_to user_wishlist_path(@wishlist.user, @wishlist), notice: "Jogo adicionado à wishlist."
  end

  def destroy
    game = Game.find(params[:game_id])
    @wishlist.games.destroy(game)
    redirect_to user_wishlist_path(@wishlist.user, @wishlist), notice: "Jogo removido da wishlist."
  end

  private

  def set_wishlist
    @wishlist = Wishlist.find(params[:wishlist_id])
  end
end
