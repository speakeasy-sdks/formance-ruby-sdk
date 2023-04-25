# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared
    class LedgerInfoStorage < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :migrations, T.nilable(T::Array[MigrationInfo]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('migrations') } }

      sig { params(migrations: T.nilable(T::Array[MigrationInfo])).void }
      def initialize(migrations: nil)
        @migrations = migrations
      end
    end

    class LedgerInfo < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }
      field :storage, T.nilable(LedgerInfoStorage), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('storage') } }

      sig { params(name: T.nilable(String), storage: T.nilable(LedgerInfoStorage)).void }
      def initialize(name: nil, storage: nil)
        @name = name
        @storage = storage
      end
    end
  end
end