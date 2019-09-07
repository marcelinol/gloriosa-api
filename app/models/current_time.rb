# frozen_string_literal: true

class CurrentTime
  FAUSTAO_TIME = Time.zone.parse("8:07")

  def self.minutes_in_faustao_format(time = Time.zone.now)
    in_seconds = (time - FAUSTAO_TIME)
    (in_seconds / 60).round
  end

  def self.time_zone
    Time.zone.to_s
  end

  def self.current_time
    Time.zone.now.iso8601
  end
end
