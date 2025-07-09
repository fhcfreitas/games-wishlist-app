class Admin::GamesController < ApplicationController
  before_action :initialize_repository
  before_action :set_game, only: %i[ show edit update destroy ]

  def index
    @games = @game_repository.all
  end

  def show
  end

  def new
    @game = @game_repository.new
  end

  def edit
  end

  def create
    @game = @game_repository.new(game_params)

    respond_to do |format|
      if @game_repository.create(game_params)
        format.html { redirect_to @game, notice: "Game was successfully created." }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @game_repository.update(@game, game_params)
        format.html { redirect_to @game, notice: "Game was successfully updated." }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @game_repository.destroy(@game)

    respond_to do |format|
      format.html { redirect_to admin_games_path, status: :see_other, notice: "Game was successfully destroyed." }
      format.json { head :no_content }
    end
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
