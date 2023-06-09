# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared
    class Script < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :plain, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('plain') } }
      field :metadata, T.nilable(T::Hash[Symbol, Object]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('metadata') } }      # Reference to attach to the generated transaction
      field :reference, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('reference') } }
      field :vars, T.nilable(T::Hash[Symbol, Object]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('vars') } }

      sig { params(plain: String, metadata: T.nilable(T::Hash[Symbol, Object]), reference: T.nilable(String), vars: T.nilable(T::Hash[Symbol, Object])).void }
      def initialize(plain: nil, metadata: nil, reference: nil, vars: nil)
        @plain = plain
        @metadata = metadata
        @reference = reference
        @vars = vars
      end
    end
  end
end
