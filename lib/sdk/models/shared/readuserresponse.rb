# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/user'

module OpenApiSDK
  module Shared# 2 - Retrieved user
    class ReadUserResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :data, T.nilable(User), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('data') } }

      sig { params(data: T.nilable(User)).void }
      def initialize(data: nil)
        @data = data
      end
    end
  end
end
