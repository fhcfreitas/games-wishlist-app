module SoftDeletable
  extend ActiveSupport::Concern

  included do
    scope :active, -> { where(active: true) }
  end

  def soft_delete
    update(active: false)
  end

  def deleted?
    !active
  end
end
