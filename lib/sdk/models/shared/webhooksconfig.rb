# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared
    class WebhooksConfig < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('active') } }
      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('createdAt'), 'decoder': Utils.datetime_from_iso_format(true) } }
      field :endpoint, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('endpoint') } }
      field :event_types, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('eventTypes') } }
      field :id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }
      field :secret, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('secret') } }
      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('updatedAt'), 'decoder': Utils.datetime_from_iso_format(true) } }

      sig { params(active: T.nilable(T::Boolean), created_at: T.nilable(DateTime), endpoint: T.nilable(String), event_types: T.nilable(T::Array[String]), id: T.nilable(String), secret: T.nilable(String), updated_at: T.nilable(DateTime)).void }
      def initialize(active: nil, created_at: nil, endpoint: nil, event_types: nil, id: nil, secret: nil, updated_at: nil)
        @active = active
        @created_at = created_at
        @endpoint = endpoint
        @event_types = event_types
        @id = id
        @secret = secret
        @updated_at = updated_at
      end
    end
  end
end
