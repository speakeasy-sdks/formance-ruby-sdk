# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/createworkflowresponse'
require_relative '../shared/error'

module OpenApiSDK
  module Operations
    class CreateWorkflowResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :content_type, String
      field :status_code, Integer      # Created workflow
      field :create_workflow_response, T.nilable(Shared::CreateWorkflowResponse)      # General error
      field :error, T.nilable(Shared::Error)
      field :raw_response, T.nilable(Faraday::Response)

      sig { params(content_type: String, status_code: Integer, create_workflow_response: T.nilable(Shared::CreateWorkflowResponse), error: T.nilable(Shared::Error), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, create_workflow_response: nil, error: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @create_workflow_response = create_workflow_response
        @error = error
        @raw_response = raw_response
      end
    end
  end
end
