# frozen_string_literal: true

require "rails_helper"

RSpec.describe "CurrentTime" do
  it "returns positive value if it is earlier than 8:07" do
    before_8_7 = CurrentTime::FAUSTAO_TIME - 15.minutes
    Timecop.freeze(before_8_7) do
      expect(CurrentTime.minutes_in_faustao_format(Time.zone.now)).to be_negative
    end
  end

  it "returns a positive value if it is earlier than 8:07" do
    before_8_7 = CurrentTime::FAUSTAO_TIME + 30.minutes
    Timecop.freeze(before_8_7) do
      expect(CurrentTime.minutes_in_faustao_format(Time.zone.now)).to be_positive
    end
  end

  it "returns how many minutes until next 8:07 if earlier than that" do
    before_8_7 = CurrentTime::FAUSTAO_TIME - 15.minutes
    Timecop.freeze(before_8_7) do
      expect(CurrentTime.minutes_in_faustao_format(Time.zone.now)).to eq(-15)
    end
  end

  it "has Brasilia time zone" do
    expect(CurrentTime.time_zone).to eq("(GMT-03:00) Brasilia")
  end
end
