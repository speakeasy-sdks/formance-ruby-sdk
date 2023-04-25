# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared
    class CurrencyCloudConfig < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :api_key, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('apiKey') } }      # Username of the API Key holder
      field :login_id, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('loginID') } }      # The endpoint to use for the API. Defaults to https://devapi.currencycloud.com
      field :endpoint, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('endpoint') } }      # The frequency at which the connector will fetch transactions
      field :polling_period, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('pollingPeriod') } }

      sig { params(api_key: String, login_id: String, endpoint: T.nilable(String), polling_period: T.nilable(String)).void }
      def initialize(api_key: nil, login_id: nil, endpoint: nil, polling_period: nil)
        @api_key = api_key
        @login_id = login_id
        @endpoint = endpoint
        @polling_period = polling_period
      end
    end
  end
end
