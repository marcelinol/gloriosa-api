# frozen_string_literal: true

class Quote < ApplicationRecord
  validates :text, presence: true, allow_blank: false
  validates :text, uniqueness: { case_sensitive: false }

  scope :approved, -> { where(approved: true) }
end
