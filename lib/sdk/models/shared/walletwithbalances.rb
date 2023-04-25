# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/assetholder'

module OpenApiSDK
  module Shared
    class WalletWithBalancesBalances < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :main, AssetHolder, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('main') } }

      sig { params(main: AssetHolder).void }
      def initialize(main: nil)
        @main = main
      end
    end

    class WalletWithBalances < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :balances, WalletWithBalancesBalances, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('balances') } }
      field :created_at, DateTime, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('createdAt'), 'decoder': Utils.datetime_from_iso_format(false) } }      # The unique ID of the wallet.
      field :id, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }
      field :ledger, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('ledger') } }      # Metadata associated with the wallet.
      field :metadata, T::Hash[Symbol, Object], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('metadata') } }
      field :name, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }

      sig { params(balances: WalletWithBalancesBalances, created_at: DateTime, id: String, ledger: String, metadata: T::Hash[Symbol, Object], name: String).void }
      def initialize(balances: nil, created_at: nil, id: nil, ledger: nil, metadata: nil, name: nil)
        @balances = balances
        @created_at = created_at
        @id = id
        @ledger = ledger
        @metadata = metadata
        @name = name
      end
    end
  end
end
