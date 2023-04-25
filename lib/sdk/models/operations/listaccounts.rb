# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/accountscursorresponse'
require_relative '../shared/errorresponse'

module OpenApiSDK
  module Operations
    # ListAccountsBalanceOperatorEnum - Operator used for the filtering of balances can be greater than/equal, less than/equal, greater than, less than, equal or not.
    # 
    class ListAccountsBalanceOperatorEnum < T::Enum
      enums do
        GTE = new('gte')
        LTE = new('lte')
        GT = new('gt')
        LT = new('lt')
        E = new('e')
        NE = new('ne')
      end
    end


    class ListAccountsRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

            # Name of the ledger.
      field :ledger, String, { 'path_param': { 'field_name': 'ledger', 'style': 'simple', 'explode': false } }      # Filter accounts by address pattern (regular expression placed between ^ and $).
      field :address, T.nilable(String), { 'query_param': { 'field_name': 'address', 'style': 'form', 'explode': true } }      # Pagination cursor, will return accounts after given address, in descending order.
      field :after, T.nilable(String), { 'query_param': { 'field_name': 'after', 'style': 'form', 'explode': true } }      # Filter accounts by their balance (default operator is gte)
      field :balance, T.nilable(Integer), { 'query_param': { 'field_name': 'balance', 'style': 'form', 'explode': true } }      # Operator used for the filtering of balances can be greater than/equal, less than/equal, greater than, less than, equal or not.
      # 
      field :balance_operator, T.nilable(ListAccountsBalanceOperatorEnum), { 'query_param': { 'field_name': 'balanceOperator', 'style': 'form', 'explode': true } }      # Operator used for the filtering of balances can be greater than/equal, less than/equal, greater than, less than, equal or not.
      # Deprecated, please use `balanceOperator` instead.
      # 
      field :balance_operator_deprecated, T.nilable(ListAccountsBalanceOperatorEnum), { 'query_param': { 'field_name': 'balance_operator', 'style': 'form', 'explode': true } }      # Parameter used in pagination requests. Maximum page size is set to 15.
      # Set to the value of next for the next page of results.
      # Set to the value of previous for the previous page of results.
      # No other parameters can be set when this parameter is set.
      # 
      field :cursor, T.nilable(String), { 'query_param': { 'field_name': 'cursor', 'style': 'form', 'explode': true } }      # Filter accounts by metadata key value pairs. Nested objects can be used as seen in the example below.
      field :metadata, T.nilable(T::Hash[Symbol, Object]), { 'query_param': { 'field_name': 'metadata', 'style': 'deepObject', 'explode': true } }      # The maximum number of results to return per page.
      # 
      field :page_size, T.nilable(Integer), { 'query_param': { 'field_name': 'pageSize', 'style': 'form', 'explode': true } }      # The maximum number of results to return per page.
      # Deprecated, please use `pageSize` instead.
      # 
      field :page_size_deprecated, T.nilable(Integer), { 'query_param': { 'field_name': 'page_size', 'style': 'form', 'explode': true } }      # Parameter used in pagination requests. Maximum page size is set to 15.
      # Set to the value of next for the next page of results.
      # Set to the value of previous for the previous page of results.
      # No other parameters can be set when this parameter is set.
      # Deprecated, please use `cursor` instead.
      # 
      field :pagination_token, T.nilable(String), { 'query_param': { 'field_name': 'pagination_token', 'style': 'form', 'explode': true } }

      sig { params(ledger: String, address: T.nilable(String), after: T.nilable(String), balance: T.nilable(Integer), balance_operator: T.nilable(ListAccountsBalanceOperatorEnum), balance_operator_deprecated: T.nilable(ListAccountsBalanceOperatorEnum), cursor: T.nilable(String), metadata: T.nilable(T::Hash[Symbol, Object]), page_size: T.nilable(Integer), page_size_deprecated: T.nilable(Integer), pagination_token: T.nilable(String)).void }
      def initialize(ledger: nil, address: nil, after: nil, balance: nil, balance_operator: nil, balance_operator_deprecated: nil, cursor: nil, metadata: nil, page_size: nil, page_size_deprecated: nil, pagination_token: nil)
        @ledger = ledger
        @address = address
        @after = after
        @balance = balance
        @balance_operator = balance_operator
        @balance_operator_deprecated = balance_operator_deprecated
        @cursor = cursor
        @metadata = metadata
        @page_size = page_size
        @page_size_deprecated = page_size_deprecated
        @pagination_token = pagination_token
      end
    end

    class ListAccountsResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :content_type, String
      field :status_code, Integer      # OK
      field :accounts_cursor_response, T.nilable(Shared::AccountsCursorResponse)      # Error
      field :error_response, T.nilable(Shared::ErrorResponse)
      field :raw_response, T.nilable(Faraday::Response)

      sig { params(content_type: String, status_code: Integer, accounts_cursor_response: T.nilable(Shared::AccountsCursorResponse), error_response: T.nilable(Shared::ErrorResponse), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, accounts_cursor_response: nil, error_response: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @accounts_cursor_response = accounts_cursor_response
        @error_response = error_response
        @raw_response = raw_response
      end
    end
  end
end