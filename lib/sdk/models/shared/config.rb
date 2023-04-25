# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/ledgerstorage'

module OpenApiSDK
  module Shared
    class Config < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :storage, LedgerStorage, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('storage') } }

      sig { params(storage: LedgerStorage).void }
      def initialize(storage: nil)
        @storage = storage
      end
    end
  end
end
