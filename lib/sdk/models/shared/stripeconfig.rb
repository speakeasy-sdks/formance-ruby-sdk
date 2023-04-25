# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared
    class StripeConfig < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :api_key, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('apiKey') } }      # Number of BalanceTransaction to fetch at each polling interval.
      # 
      field :page_size, T.nilable(Integer), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('pageSize') } }      # The frequency at which the connector will try to fetch new BalanceTransaction objects from Stripe API.
      # 
      field :polling_period, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('pollingPeriod') } }

      sig { params(api_key: String, page_size: T.nilable(Integer), polling_period: T.nilable(String)).void }
      def initialize(api_key: nil, page_size: nil, polling_period: nil)
        @api_key = api_key
        @page_size = page_size
        @polling_period = polling_period
      end
    end
  end
end
