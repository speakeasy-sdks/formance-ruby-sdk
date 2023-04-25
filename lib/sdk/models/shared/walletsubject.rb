# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared
    class WalletSubject < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :identifier, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('identifier') } }
      field :type, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('type') } }
      field :balance, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('balance') } }

      sig { params(identifier: String, type: String, balance: T.nilable(String)).void }
      def initialize(identifier: nil, type: nil, balance: nil)
        @identifier = identifier
        @type = type
        @balance = balance
      end
    end
  end
end
