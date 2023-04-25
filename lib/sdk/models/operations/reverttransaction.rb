# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/errorresponse'
require_relative '../shared/transactionresponse'

module OpenApiSDK
  module Operations
    class RevertTransactionRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

            # Name of the ledger.
      field :ledger, String, { 'path_param': { 'field_name': 'ledger', 'style': 'simple', 'explode': false } }      # Transaction ID.
      field :txid, Integer, { 'path_param': { 'field_name': 'txid', 'style': 'simple', 'explode': false } }

      sig { params(ledger: String, txid: Integer).void }
      def initialize(ledger: nil, txid: nil)
        @ledger = ledger
        @txid = txid
      end
    end

    class RevertTransactionResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :content_type, String
      field :status_code, Integer      # Error
      field :error_response, T.nilable(Shared::ErrorResponse)
      field :raw_response, T.nilable(Faraday::Response)      # OK
      field :transaction_response, T.nilable(Shared::TransactionResponse)

      sig { params(content_type: String, status_code: Integer, error_response: T.nilable(Shared::ErrorResponse), raw_response: T.nilable(Faraday::Response), transaction_response: T.nilable(Shared::TransactionResponse)).void }
      def initialize(content_type: nil, status_code: nil, error_response: nil, raw_response: nil, transaction_response: nil)
        @content_type = content_type
        @status_code = status_code
        @error_response = error_response
        @raw_response = raw_response
        @transaction_response = transaction_response
      end
    end
  end
end
