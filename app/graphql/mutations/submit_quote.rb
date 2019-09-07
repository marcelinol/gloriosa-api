module Mutations
  class SubmitQuote < BaseMutation
    argument :text, String, required: true

    type Types::QuoteType

    def resolve(text: nil)
      quote = Quote.create!(text: text)
      quote.reload
    end
  end
end
