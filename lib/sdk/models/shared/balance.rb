# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared
    class Balance < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :name, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }

      sig { params(name: String).void }
      def initialize(name: nil)
        @name = name
      end
    end
  end
end