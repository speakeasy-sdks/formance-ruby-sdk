# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/script'
require_relative '../shared/scriptresponse'

module OpenApiSDK
  module Operations
    class RunScriptRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

            # Name of the ledger.
      field :ledger, String, { 'path_param': { 'field_name': 'ledger', 'style': 'simple', 'explode': false } }
      field :script, Shared::Script, { 'request': { 'media_type': 'application/json' } }      # Set the preview mode. Preview mode doesn't add the logs to the database or publish a message to the message broker.
      field :preview, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'preview', 'style': 'form', 'explode': true } }

      sig { params(ledger: String, script: Shared::Script, preview: T.nilable(T::Boolean)).void }
      def initialize(ledger: nil, script: nil, preview: nil)
        @ledger = ledger
        @script = script
        @preview = preview
      end
    end

    class RunScriptResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :content_type, String
      field :status_code, Integer
      field :raw_response, T.nilable(Faraday::Response)      # On success, it will return a 200 status code, and the resulting transaction under the `transaction` field.
      # 
      # On failure, it will also return a 200 status code, and the following fields:
      #   - `details`: contains a URL. When there is an error parsing Numscript, the result can be difficult to read—the provided URL will render the error in an easy-to-read format.
      #   - `errorCode` and `error_code` (deprecated): contains the string code of the error
      #   - `errorMessage` and `error_message` (deprecated): contains a human-readable indication of what went wrong, for example that an account had insufficient funds, or that there was an error in the provided Numscript.
      # 
      field :script_response, T.nilable(Shared::ScriptResponse)

      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), script_response: T.nilable(Shared::ScriptResponse)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, script_response: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @script_response = script_response
      end
    end
  end
end
