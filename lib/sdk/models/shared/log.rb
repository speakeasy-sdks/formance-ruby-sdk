# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared

    class LogTypeEnum < T::Enum
      enums do
        NEW_TRANSACTION = new('NEW_TRANSACTION')
        SET_METADATA = new('SET_METADATA')
      end
    end


    class Log < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :data, T::Hash[Symbol, Object], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('data') } }
      field :date, DateTime, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('date'), 'decoder': Utils.datetime_from_iso_format(false) } }
      field :hash, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('hash') } }
      field :id, Integer, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }
      field :type, LogTypeEnum, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Shared::LogTypeEnum, false) } }

      sig { params(data: T::Hash[Symbol, Object], date: DateTime, hash: String, id: Integer, type: LogTypeEnum).void }
      def initialize(data: nil, date: nil, hash: nil, id: nil, type: nil)
        @data = data
        @date = date
        @hash = hash
        @id = id
        @type = type
      end
    end
  end
end
