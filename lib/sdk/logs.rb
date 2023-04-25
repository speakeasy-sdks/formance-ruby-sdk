# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Logs
    extend T::Sig
    sig { params(sdk: OpenApiSDK::SDK, client: Faraday::Connection, server_url: String, sdk_version: String, gen_version: String).void }
    def initialize(sdk, client, server_url, sdk_version, gen_version)
      @sdk = sdk
      @client = client
      @server_url = server_url
      @sdk_version = sdk_version
      @gen_version = gen_version
    end
sig { params(request: T.nilable(Operations::ListLogsRequest)).returns(Utils::FieldAugmented) }
    def list_logs(request)
    # list_logs - List the logs from a ledger
    # List the logs from a ledger, sorted by ID in descending order.
      base_url = @server_url
      url = Utils.generate_url(
        Operations::ListLogsRequest,
        base_url,
        '/api/ledger/{ledger}/log',
        request
      )
      query_params = Utils.get_query_params(Operations::ListLogsRequest, request)

      r = @client.get(url) do |req|
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListLogsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::LogsCursorResponse)
          res.logs_cursor_response = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::ErrorResponse)
          res.error_response = out
        end
      end
      res
    end
  end
end
