require "rails_helper"

RSpec.describe "Types::CurrentTimeType" do
  xit "returns minutes to 8:07" do
    query_string = <<-GRAPHQL
      query {
        currentTime {
          minutes
        }
      }
    GRAPHQL
  end
end
