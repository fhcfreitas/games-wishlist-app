class ActiveGamesQuery
  def self.call(active: true)
    Game.where(active: active)
  end
end
