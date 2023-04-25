# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/connector_enum'
require_relative '../shared/taskscursor'

module OpenApiSDK
  module Operations
    class ListConnectorTasksRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

            # The name of the connector.
      field :connector, Shared::ConnectorEnum, { 'path_param': { 'field_name': 'connector', 'style': 'simple', 'explode': false } }      # Parameter used in pagination requests. Maximum page size is set to 15.
      # Set to the value of next for the next page of results.
      # Set to the value of previous for the previous page of results.
      # No other parameters can be set when this parameter is set.
      # 
      field :cursor, T.nilable(String), { 'query_param': { 'field_name': 'cursor', 'style': 'form', 'explode': true } }      # The maximum number of results to return per page.
      # 
      field :page_size, T.nilable(Integer), { 'query_param': { 'field_name': 'pageSize', 'style': 'form', 'explode': true } }

      sig { params(connector: Shared::ConnectorEnum, cursor: T.nilable(String), page_size: T.nilable(Integer)).void }
      def initialize(connector: nil, cursor: nil, page_size: nil)
        @connector = connector
        @cursor = cursor
        @page_size = page_size
      end
    end

    class ListConnectorTasksResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      
      field :content_type, String
      field :status_code, Integer
      field :raw_response, T.nilable(Faraday::Response)      # OK
      field :tasks_cursor, T.nilable(Shared::TasksCursor)

      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), tasks_cursor: T.nilable(Shared::TasksCursor)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, tasks_cursor: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @tasks_cursor = tasks_cursor
      end
    end
  end
end