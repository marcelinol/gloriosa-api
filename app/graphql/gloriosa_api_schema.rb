# frozen_string_literal: true

class GloriosaApiSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
