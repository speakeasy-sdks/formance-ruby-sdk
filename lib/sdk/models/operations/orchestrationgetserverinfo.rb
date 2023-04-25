# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'
require_relative '../shared/serverinfo'

module OpenApiSDK
  module Operations
    class OrchestrationgetServerInfoResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :content_type, String
      field :status_code, Integer      # General error
      field :error, T.nilable(Shared::Error)
      field :raw_response, T.nilable(Faraday::Response)      # Server information
      field :server_info, T.nilable(Shared::ServerInfo)

      sig { params(content_type: String, status_code: Integer, error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response), server_info: T.nilable(Shared::ServerInfo)).void }
      def initialize(content_type: nil, status_code: nil, error: nil, raw_response: nil, server_info: nil)
        @content_type = content_type
        @status_code = status_code
        @error = error
        @raw_response = raw_response
        @server_info = server_info
      end
    end
  end
end
