# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared
    class LedgerStorage < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :driver, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('driver') } }
      field :ledgers, T::Array[String], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('ledgers') } }

      sig { params(driver: String, ledgers: T::Array[String]).void }
      def initialize(driver: nil, ledgers: nil)
        @driver = driver
        @ledgers = ledgers
      end
    end
  end
end
