# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/readuserresponse'

module OpenApiSDK
  module Operations
    class ReadUserRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

            # User ID
      field :user_id, String, { 'path_param': { 'field_name': 'userId', 'style': 'simple', 'explode': false } }

      sig { params(user_id: String).void }
      def initialize(user_id: nil)
        @user_id = user_id
      end
    end

    class ReadUserResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :content_type, String
      field :status_code, Integer
      field :raw_response, T.nilable(Faraday::Response)      # Retrieved user
      field :read_user_response, T.nilable(Shared::ReadUserResponse)

      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), read_user_response: T.nilable(Shared::ReadUserResponse)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, read_user_response: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @read_user_response = read_user_response
      end
    end
  end
end