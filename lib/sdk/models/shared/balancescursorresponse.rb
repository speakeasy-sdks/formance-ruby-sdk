# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared
    class BalancesCursorResponseCursor < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :data, T::Array[T::Hash[Symbol, T::Hash[Symbol, Integer]]], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('data') } }
      field :has_more, T::Boolean, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('hasMore') } }
      field :page_size, Integer, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('pageSize') } }
      field :next_, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('next') } }
      field :previous, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('previous') } }

      sig { params(data: T::Array[T::Hash[Symbol, T::Hash[Symbol, Integer]]], has_more: T::Boolean, page_size: Integer, next_: T.nilable(String), previous: T.nilable(String)).void }
      def initialize(data: nil, has_more: nil, page_size: nil, next_: nil, previous: nil)
        @data = data
        @has_more = has_more
        @page_size = page_size
        @next_ = next_
        @previous = previous
      end
    end
# 2 - OK
    class BalancesCursorResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :cursor, BalancesCursorResponseCursor, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('cursor') } }

      sig { params(cursor: BalancesCursorResponseCursor).void }
      def initialize(cursor: nil)
        @cursor = cursor
      end
    end
  end
end
