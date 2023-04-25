# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/balance'

module OpenApiSDK
  module Shared# 2 - Created balance
    class CreateBalanceResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :data, Balance, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('data') } }

      sig { params(data: Balance).void }
      def initialize(data: nil)
        @data = data
      end
    end
  end
end