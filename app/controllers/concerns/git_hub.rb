# frozen_string_literal: true

require 'graphql/client'
require 'graphql/client/http'

module GitHub
  HTTP   = GraphQL::Client::HTTP.new('https://api.github.com/users')
  Schema = GraphQL::Client.load_schema(HTTP)
  Client = GraphQL::Client.new(schema: Schema, execute: HTTP)
end
