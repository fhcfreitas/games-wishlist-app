class GamesRepository
  def all
    Game.all
  end

  def new(attributes = {})
    Game.new(attributes)
  end

  def find(id)
    Game.find(id)
  end

  def find_by(attributes)
    Game.find_by(attributes)
  end

  def create(attributes)
    Game.create(attributes)
  end

  def update(record, attributes)
    record.update(attributes)
  end

  def destroy(record)
    record.soft_delete
  end

  def find_by_name(name)
    Game.find_by(name: name)
  end

  def find_by_publisher(publisher)
    Game.where(publisher: publisher)
  end

  def find_by_year_range(start_year, end_year)
    Game.where(release_year: start_year..end_year)
  end

  def all_active
    Game.where(active: true)
  end

  def published_games
    Game.where.not(publisher: nil)
  end

  def recent_games(limit = 10)
    Game.order(created_at: :desc).limit(limit)
  end
end
