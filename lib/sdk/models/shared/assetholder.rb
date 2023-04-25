# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared
    class AssetHolder < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :assets, T::Hash[Symbol, Float], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('assets') } }

      sig { params(assets: T::Hash[Symbol, Float]).void }
      def initialize(assets: nil)
        @assets = assets
      end
    end
  end
end