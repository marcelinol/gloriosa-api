# frozen_string_literal: true

module Types
  class QuoteType < BaseObject
    field :text, String, null: false
    field :uuid, String, null: false
  end
end
