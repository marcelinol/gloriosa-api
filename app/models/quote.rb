class Quote < ApplicationRecord
  validates :text, presence: true, allow_blank: false

  scope :approved, -> { where(approved: true) }
end
