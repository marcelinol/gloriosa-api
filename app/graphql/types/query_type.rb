# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :current_time,
      CurrentTimeType,
      null: true,
      description: "Current time in Faustao format"

    def current_time
      CurrentTime
    end

    field :quotes, [QuoteType], null: true, description: "A quote from Faustao"
    def quotes
      Quote.all.approved
    end
  end
end
