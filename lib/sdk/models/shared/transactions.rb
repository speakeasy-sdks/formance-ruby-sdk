# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared
    class Transactions < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :transactions, T::Array[TransactionData], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('transactions') } }

      sig { params(transactions: T::Array[TransactionData]).void }
      def initialize(transactions: nil)
        @transactions = transactions
      end
    end
  end
end