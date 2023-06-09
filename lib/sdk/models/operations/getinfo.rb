# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/configinforesponse'
require_relative '../shared/errorresponse'

module OpenApiSDK
  module Operations
    class GetInfoResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :content_type, String
      field :status_code, Integer      # OK
      field :config_info_response, T.nilable(Shared::ConfigInfoResponse)      # Error
      field :error_response, T.nilable(Shared::ErrorResponse)
      field :raw_response, T.nilable(Faraday::Response)

      sig { params(content_type: String, status_code: Integer, config_info_response: T.nilable(Shared::ConfigInfoResponse), error_response: T.nilable(Shared::ErrorResponse), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, config_info_response: nil, error_response: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @config_info_response = config_info_response
        @error_response = error_response
        @raw_response = raw_response
      end
    end
  end
end
