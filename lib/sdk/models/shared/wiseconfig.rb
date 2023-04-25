# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared
    class WiseConfig < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :api_key, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('apiKey') } }

      sig { params(api_key: String).void }
      def initialize(api_key: nil)
        @api_key = api_key
      end
    end
  end
end