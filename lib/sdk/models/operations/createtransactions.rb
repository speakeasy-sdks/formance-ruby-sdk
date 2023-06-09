# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/transactions'
require_relative '../shared/errorresponse'
require_relative '../shared/transactionsresponse'

module OpenApiSDK
  module Operations
    class CreateTransactionsRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

            # Name of the ledger.
      field :ledger, String, { 'path_param': { 'field_name': 'ledger', 'style': 'simple', 'explode': false } }
      field :transactions, Shared::Transactions, { 'request': { 'media_type': 'application/json' } }

      sig { params(ledger: String, transactions: Shared::Transactions).void }
      def initialize(ledger: nil, transactions: nil)
        @ledger = ledger
        @transactions = transactions
      end
    end

    class CreateTransactionsResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :content_type, String
      field :status_code, Integer      # Error
      field :error_response, T.nilable(Shared::ErrorResponse)
      field :raw_response, T.nilable(Faraday::Response)      # OK
      field :transactions_response, T.nilable(Shared::TransactionsResponse)

      sig { params(content_type: String, status_code: Integer, error_response: T.nilable(Shared::ErrorResponse), raw_response: T.nilable(Faraday::Response), transactions_response: T.nilable(Shared::TransactionsResponse)).void }
      def initialize(content_type: nil, status_code: nil, error_response: nil, raw_response: nil, transactions_response: nil)
        @content_type = content_type
        @status_code = status_code
        @error_response = error_response
        @raw_response = raw_response
        @transactions_response = transactions_response
      end
    end
  end
end
