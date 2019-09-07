module Types
  class MutationType < Types::BaseObject
    field :submit_quote,
      mutation: Mutations::SubmitQuote,
      description: "Submit a Faustao quote for approval"
  end
end
