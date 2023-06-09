# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/attemptresponse'

module OpenApiSDK
  module Operations
    class TestConfigRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

            # Config ID
      field :id, String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      sig { params(id: String).void }
      def initialize(id: nil)
        @id = id
      end
    end

    class TestConfigResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :content_type, String
      field :status_code, Integer      # OK
      field :attempt_response, T.nilable(Shared::AttemptResponse)
      field :raw_response, T.nilable(Faraday::Response)

      sig { params(content_type: String, status_code: Integer, attempt_response: T.nilable(Shared::AttemptResponse), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, attempt_response: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @attempt_response = attempt_response
        @raw_response = raw_response
      end
    end
  end
end
