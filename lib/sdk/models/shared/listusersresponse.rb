# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared# 2 - List of users
    class ListUsersResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :data, T.nilable(T::Array[User]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('data') } }

      sig { params(data: T.nilable(T::Array[User])).void }
      def initialize(data: nil)
        @data = data
      end
    end
  end
end
