# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/connectorsconfigsresponse'

module OpenApiSDK
  module Operations
    class ListConfigsAvailableConnectorsResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :content_type, String
      field :status_code, Integer      # OK
      field :connectors_configs_response, T.nilable(Shared::ConnectorsConfigsResponse)
      field :raw_response, T.nilable(Faraday::Response)

      sig { params(content_type: String, status_code: Integer, connectors_configs_response: T.nilable(Shared::ConnectorsConfigsResponse), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, connectors_configs_response: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @connectors_configs_response = connectors_configs_response
        @raw_response = raw_response
      end
    end
  end
end
