# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/errorsenum_enum'
require_relative '../shared/transaction'

module OpenApiSDK
  module Shared# 2 - On success, it will return a 200 status code, and the resulting transaction under the `transaction` field.
# 
# On failure, it will also return a 200 status code, and the following fields:
#   - `details`: contains a URL. When there is an error parsing Numscript, the result can be difficult to read—the provided URL will render the error in an easy-to-read format.
#   - `errorCode` and `error_code` (deprecated): contains the string code of the error
#   - `errorMessage` and `error_message` (deprecated): contains a human-readable indication of what went wrong, for example that an account had insufficient funds, or that there was an error in the provided Numscript.
# 
    class ScriptResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :details, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('details') } }
      field :error_code, T.nilable(ErrorsEnumEnum), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('errorCode'), 'decoder': Utils.enum_from_string(Shared::ErrorsEnumEnum, true) } }
      field :error_message, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('errorMessage') } }
      field :transaction, T.nilable(Transaction), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('transaction') } }

      sig { params(details: T.nilable(String), error_code: T.nilable(ErrorsEnumEnum), error_message: T.nilable(String), transaction: T.nilable(Transaction)).void }
      def initialize(details: nil, error_code: nil, error_message: nil, transaction: nil)
        @details = details
        @error_code = error_code
        @error_message = error_message
        @transaction = transaction
      end
    end
  end
end