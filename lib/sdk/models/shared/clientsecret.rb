# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared
    class ClientSecret < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :id, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }
      field :last_digits, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('lastDigits') } }
      field :name, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }
      field :metadata, T.nilable(T::Hash[Symbol, Object]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('metadata') } }

      sig { params(id: String, last_digits: String, name: String, metadata: T.nilable(T::Hash[Symbol, Object])).void }
      def initialize(id: nil, last_digits: nil, name: nil, metadata: nil)
        @id = id
        @last_digits = last_digits
        @name = name
        @metadata = metadata
      end
    end
  end
end
