# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared
    class PaymentMetadataChangelog < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :timestamp, DateTime, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('timestamp'), 'decoder': Utils.datetime_from_iso_format(false) } }
      field :value, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('value') } }

      sig { params(timestamp: DateTime, value: String).void }
      def initialize(timestamp: nil, value: nil)
        @timestamp = timestamp
        @value = value
      end
    end
  end
end