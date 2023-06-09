# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/error'
require_relative '../shared/listworkflowsresponse'

module OpenApiSDK
  module Operations
    class ListFlowsResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :content_type, String
      field :status_code, Integer      # General error
      field :error, T.nilable(Shared::Error)      # List of workflows
      field :list_workflows_response, T.nilable(Shared::ListWorkflowsResponse)
      field :raw_response, T.nilable(Faraday::Response)

      sig { params(content_type: String, status_code: Integer, error: T.nilable(Shared::Error), list_workflows_response: T.nilable(Shared::ListWorkflowsResponse), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, error: nil, list_workflows_response: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @error = error
        @list_workflows_response = list_workflows_response
        @raw_response = raw_response
      end
    end
  end
end
