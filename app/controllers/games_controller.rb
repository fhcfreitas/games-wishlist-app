class GamesController < ApplicationController
  before_action :set_game, only: %i[ show ]

  def index
    @games = Game.all
  end

  def show
  end

  private
    def set_game
      @game = Game.find(params.expect(:id))
    end

    def game_params
      params.require(:game).permit(:name, :publisher, :price, :release_year)
    end
end
