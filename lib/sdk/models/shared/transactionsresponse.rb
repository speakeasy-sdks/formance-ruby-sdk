# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared# 2 - OK
    class TransactionsResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :data, T::Array[Transaction], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('data') } }

      sig { params(data: T::Array[Transaction]).void }
      def initialize(data: nil)
        @data = data
      end
    end
  end
end