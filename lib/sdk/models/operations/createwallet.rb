# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/createwalletresponse'
require_relative '../shared/walletserrorresponse'

module OpenApiSDK
  module Operations
    class CreateWalletResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :content_type, String
      field :status_code, Integer      # Wallet created
      field :create_wallet_response, T.nilable(Shared::CreateWalletResponse)
      field :raw_response, T.nilable(Faraday::Response)      # Error
      field :wallets_error_response, T.nilable(Shared::WalletsErrorResponse)

      sig { params(content_type: String, status_code: Integer, create_wallet_response: T.nilable(Shared::CreateWalletResponse), raw_response: T.nilable(Faraday::Response), wallets_error_response: T.nilable(Shared::WalletsErrorResponse)).void }
      def initialize(content_type: nil, status_code: nil, create_wallet_response: nil, raw_response: nil, wallets_error_response: nil)
        @content_type = content_type
        @status_code = status_code
        @create_wallet_response = create_wallet_response
        @raw_response = raw_response
        @wallets_error_response = wallets_error_response
      end
    end
  end
end
