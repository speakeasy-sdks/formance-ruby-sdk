# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/createscoperesponse'

module OpenApiSDK
  module Operations
    class CreateScopeResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :content_type, String
      field :status_code, Integer      # Created scope
      field :create_scope_response, T.nilable(Shared::CreateScopeResponse)
      field :raw_response, T.nilable(Faraday::Response)

      sig { params(content_type: String, status_code: Integer, create_scope_response: T.nilable(Shared::CreateScopeResponse), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, create_scope_response: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @create_scope_response = create_scope_response
        @raw_response = raw_response
      end
    end
  end
end