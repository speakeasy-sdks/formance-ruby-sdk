# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/listusersresponse'

module OpenApiSDK
  module Operations
    class ListUsersResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :content_type, String
      field :status_code, Integer      # List of users
      field :list_users_response, T.nilable(Shared::ListUsersResponse)
      field :raw_response, T.nilable(Faraday::Response)

      sig { params(content_type: String, status_code: Integer, list_users_response: T.nilable(Shared::ListUsersResponse), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, list_users_response: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @list_users_response = list_users_response
        @raw_response = raw_response
      end
    end
  end
end
