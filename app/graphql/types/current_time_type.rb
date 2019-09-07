# frozen_string_literal: true

module Types
  class CurrentTimeType < BaseObject
    field :minutes, Int, null: true, description: "How many minutes have passed or are missing until next or last 8:07"
    field :time_zone, String, null: true, description: "Used time zone to format time in Faustao format"
    field :current_time, String, null: true, description: "Current time in ISO8601 format"

    def minutes
      CurrentTime.minutes_in_faustao_format
    end
  end
end
