# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared
    class Hold < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :description, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('description') } }      # The unique ID of the hold.
      field :id, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }      # Metadata associated with the hold.
      field :metadata, T::Hash[Symbol, Object], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('metadata') } }      # The ID of the wallet the hold is associated with.
      field :wallet_id, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('walletID') } }
      field :destination, T.nilable(Object), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('destination') } }

      sig { params(description: String, id: String, metadata: T::Hash[Symbol, Object], wallet_id: String, destination: T.nilable(Object)).void }
      def initialize(description: nil, id: nil, metadata: nil, wallet_id: nil, destination: nil)
        @description = description
        @id = id
        @metadata = metadata
        @wallet_id = wallet_id
        @destination = destination
      end
    end
  end
end
