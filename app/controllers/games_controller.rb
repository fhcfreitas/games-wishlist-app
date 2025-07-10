class GamesController < ApplicationController
  before_action :initialize_repository
  before_action :set_game, only: %i[ show ]

  def index
    @games = @game_repository.all
  end

  def show
  end

  private

  def initialize_repository
    @game_repository = GamesRepository.new
  end

  def set_game
    @game = @game_repository.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name, :publisher, :price, :release_year)
  end
end
