# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared
    class GetTransactionsResponseCursor < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :data, T::Array[WalletsTransaction], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('data') } }
      field :page_size, Integer, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('pageSize') } }
      field :has_more, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('hasMore') } }
      field :next_, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('next') } }
      field :previous, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('previous') } }

      sig { params(data: T::Array[WalletsTransaction], page_size: Integer, has_more: T.nilable(T::Boolean), next_: T.nilable(String), previous: T.nilable(String)).void }
      def initialize(data: nil, page_size: nil, has_more: nil, next_: nil, previous: nil)
        @data = data
        @page_size = page_size
        @has_more = has_more
        @next_ = next_
        @previous = previous
      end
    end
# 2 - OK
    class GetTransactionsResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :cursor, GetTransactionsResponseCursor, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('cursor') } }

      sig { params(cursor: GetTransactionsResponseCursor).void }
      def initialize(cursor: nil)
        @cursor = cursor
      end
    end
  end
end
