module SoftDeletable
  extend ActiveSupport::Concern

  included do
    scope :active, -> { where(active: true) }
    default_scope { active }
  end

  def soft_delete
    update(active: false)
  end

  def deleted?
    !active
  end
end
