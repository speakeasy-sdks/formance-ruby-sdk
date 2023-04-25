# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/balancescursorresponse'
require_relative '../shared/errorresponse'

module OpenApiSDK
  module Operations
    class GetBalancesRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

            # Name of the ledger.
      field :ledger, String, { 'path_param': { 'field_name': 'ledger', 'style': 'simple', 'explode': false } }      # Filter balances involving given account, either as source or destination.
      field :address, T.nilable(String), { 'query_param': { 'field_name': 'address', 'style': 'form', 'explode': true } }      # Pagination cursor, will return accounts after given address, in descending order.
      field :after, T.nilable(String), { 'query_param': { 'field_name': 'after', 'style': 'form', 'explode': true } }      # Parameter used in pagination requests. Maximum page size is set to 15.
      # Set to the value of next for the next page of results.
      # Set to the value of previous for the previous page of results.
      # No other parameters can be set when this parameter is set.
      # 
      field :cursor, T.nilable(String), { 'query_param': { 'field_name': 'cursor', 'style': 'form', 'explode': true } }      # Parameter used in pagination requests.
      # Set to the value of next for the next page of results.
      # Set to the value of previous for the previous page of results.
      # Deprecated, please use `cursor` instead.
      field :pagination_token, T.nilable(String), { 'query_param': { 'field_name': 'pagination_token', 'style': 'form', 'explode': true } }

      sig { params(ledger: String, address: T.nilable(String), after: T.nilable(String), cursor: T.nilable(String), pagination_token: T.nilable(String)).void }
      def initialize(ledger: nil, address: nil, after: nil, cursor: nil, pagination_token: nil)
        @ledger = ledger
        @address = address
        @after = after
        @cursor = cursor
        @pagination_token = pagination_token
      end
    end

    class GetBalancesResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :content_type, String
      field :status_code, Integer      # OK
      field :balances_cursor_response, T.nilable(Shared::BalancesCursorResponse)      # Error
      field :error_response, T.nilable(Shared::ErrorResponse)
      field :raw_response, T.nilable(Faraday::Response)

      sig { params(content_type: String, status_code: Integer, balances_cursor_response: T.nilable(Shared::BalancesCursorResponse), error_response: T.nilable(Shared::ErrorResponse), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, balances_cursor_response: nil, error_response: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @balances_cursor_response = balances_cursor_response
        @error_response = error_response
        @raw_response = raw_response
      end
    end
  end
end
