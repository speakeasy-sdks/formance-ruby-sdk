# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/transaction'

module OpenApiSDK
  module Shared# 2 - OK
    class TransactionResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :data, Transaction, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('data') } }

      sig { params(data: Transaction).void }
      def initialize(data: nil)
        @data = data
      end
    end
  end
end
