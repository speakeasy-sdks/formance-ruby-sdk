# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/balancewithassets'

module OpenApiSDK
  module Shared# 2 - Balance summary
    class GetBalanceResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :data, BalanceWithAssets, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('data') } }

      sig { params(data: BalanceWithAssets).void }
      def initialize(data: nil)
        @data = data
      end
    end
  end
end