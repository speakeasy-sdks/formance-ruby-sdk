# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Orchestration
    extend T::Sig
    sig { params(sdk: OpenApiSDK::SDK, client: Faraday::Connection, server_url: String, sdk_version: String, gen_version: String).void }
    def initialize(sdk, client, server_url, sdk_version, gen_version)
      @sdk = sdk
      @client = client
      @server_url = server_url
      @sdk_version = sdk_version
      @gen_version = gen_version
    end
sig { params(request: T.nilable(Shared::CreateWorkflowRequest)).returns(Utils::FieldAugmented) }
    def create_workflow(request)
    # create_workflow - Create workflow
    # Create a workflow
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/api/orchestration/flows"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type

      r = @client.post(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::CreateWorkflowResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::CreateWorkflowResponse)
          res.create_workflow_response = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::GetFlowRequest)).returns(Utils::FieldAugmented) }
    def get_flow(request)
    # get_flow - Get a flow by id
    # Get a flow by id
      base_url = @server_url
      url = Utils.generate_url(
        Operations::GetFlowRequest,
        base_url,
        '/api/orchestration/flows/{flowId}',
        request
      )

      r = @client.get(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetFlowResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::GetWorkflowResponse)
          res.get_workflow_response = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::GetWorkflowOccurrenceRequest)).returns(Utils::FieldAugmented) }
    def get_workflow_occurrence(request)
    # get_workflow_occurrence - Get a workflow occurrence by id
    # Get a workflow occurrence by id
      base_url = @server_url
      url = Utils.generate_url(
        Operations::GetWorkflowOccurrenceRequest,
        base_url,
        '/api/orchestration/flows/{flowId}/runs/{runId}',
        request
      )

      r = @client.get(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetWorkflowOccurrenceResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::GetWorkflowOccurrenceResponse)
          res.get_workflow_occurrence_response = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end
sig { returns(Utils::FieldAugmented) }
    def list_flows
    # list_flows - List registered flows
    # List registered flows
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/api/orchestration/flows"

      r = @client.get(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListFlowsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::ListWorkflowsResponse)
          res.list_workflows_response = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::ListRunsRequest)).returns(Utils::FieldAugmented) }
    def list_runs(request)
    # list_runs - List occurrences of a workflow
    # List occurrences of a workflow
      base_url = @server_url
      url = Utils.generate_url(
        Operations::ListRunsRequest,
        base_url,
        '/api/orchestration/flows/{flowId}/runs',
        request
      )

      r = @client.get(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListRunsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::ListRunsResponse)
          res.list_runs_response = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end
sig { returns(Utils::FieldAugmented) }
    def orchestrationget_server_info
    # orchestrationget_server_info - Get server info
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/api/orchestration/_info"

      r = @client.get(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::OrchestrationgetServerInfoResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::ServerInfo)
          res.server_info = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::RunWorkflowRequest)).returns(Utils::FieldAugmented) }
    def run_workflow(request)
    # run_workflow - Run workflow
    # Run workflow
      base_url = @server_url
      url = Utils.generate_url(
        Operations::RunWorkflowRequest,
        base_url,
        '/api/orchestration/flows/{flowId}/runs',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(Operations::RunWorkflowRequest, request)

      r = @client.post(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::RunWorkflowResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::RunWorkflowResponse)
          res.run_workflow_response = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Error)
          res.error = out
        end
      end
      res
    end
  end
end
