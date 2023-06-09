# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/updatescoperequest'
require_relative '../shared/updatescoperesponse'

module OpenApiSDK
  module Operations
    class UpdateScopeRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

            # Scope ID
      field :scope_id, String, { 'path_param': { 'field_name': 'scopeId', 'style': 'simple', 'explode': false } }
      field :update_scope_request, T.nilable(Shared::UpdateScopeRequest), { 'request': { 'media_type': 'application/json' } }

      sig { params(scope_id: String, update_scope_request: T.nilable(Shared::UpdateScopeRequest)).void }
      def initialize(scope_id: nil, update_scope_request: nil)
        @scope_id = scope_id
        @update_scope_request = update_scope_request
      end
    end

    class UpdateScopeResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :content_type, String
      field :status_code, Integer
      field :raw_response, T.nilable(Faraday::Response)      # Updated scope
      field :update_scope_response, T.nilable(Shared::UpdateScopeResponse)

      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), update_scope_response: T.nilable(Shared::UpdateScopeResponse)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, update_scope_response: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @update_scope_response = update_scope_response
      end
    end
  end
end
