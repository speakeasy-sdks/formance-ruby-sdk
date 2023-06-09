# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Clients
    extend T::Sig
    sig { params(sdk: OpenApiSDK::SDK, client: Faraday::Connection, server_url: String, sdk_version: String, gen_version: String).void }
    def initialize(sdk, client, server_url, sdk_version, gen_version)
      @sdk = sdk
      @client = client
      @server_url = server_url
      @sdk_version = sdk_version
      @gen_version = gen_version
    end
sig { params(request: T.nilable(Operations::AddScopeToClientRequest)).returns(Utils::FieldAugmented) }
    def add_scope_to_client(request)
    # add_scope_to_client - Add scope to client
      base_url = @server_url
      url = Utils.generate_url(
        Operations::AddScopeToClientRequest,
        base_url,
        '/api/auth/clients/{clientId}/scopes/{scopeId}',
        request
      )

      r = @client.put(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::AddScopeToClientResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      end
      res
    end
sig { params(request: T.nilable(Shared::CreateClientRequest)).returns(Utils::FieldAugmented) }
    def create_client(request)
    # create_client - Create client
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/api/auth/clients"
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

      res = Operations::CreateClientResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::CreateClientResponse)
          res.create_client_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::CreateSecretRequest)).returns(Utils::FieldAugmented) }
    def create_secret(request)
    # create_secret - Add a secret to a client
      base_url = @server_url
      url = Utils.generate_url(
        Operations::CreateSecretRequest,
        base_url,
        '/api/auth/clients/{clientId}/secrets',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :create_secret_request, :json)
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

      res = Operations::CreateSecretResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::CreateSecretResponse)
          res.create_secret_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::DeleteClientRequest)).returns(Utils::FieldAugmented) }
    def delete_client(request)
    # delete_client - Delete client
      base_url = @server_url
      url = Utils.generate_url(
        Operations::DeleteClientRequest,
        base_url,
        '/api/auth/clients/{clientId}',
        request
      )

      r = @client.delete(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::DeleteClientResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      end
      res
    end
sig { params(request: T.nilable(Operations::DeleteScopeFromClientRequest)).returns(Utils::FieldAugmented) }
    def delete_scope_from_client(request)
    # delete_scope_from_client - Delete scope from client
      base_url = @server_url
      url = Utils.generate_url(
        Operations::DeleteScopeFromClientRequest,
        base_url,
        '/api/auth/clients/{clientId}/scopes/{scopeId}',
        request
      )

      r = @client.delete(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::DeleteScopeFromClientResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      end
      res
    end
sig { params(request: T.nilable(Operations::DeleteSecretRequest)).returns(Utils::FieldAugmented) }
    def delete_secret(request)
    # delete_secret - Delete a secret from a client
      base_url = @server_url
      url = Utils.generate_url(
        Operations::DeleteSecretRequest,
        base_url,
        '/api/auth/clients/{clientId}/secrets/{secretId}',
        request
      )

      r = @client.delete(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::DeleteSecretResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      end
      res
    end
sig { returns(Utils::FieldAugmented) }
    def list_clients
    # list_clients - List clients
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/api/auth/clients"

      r = @client.get(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListClientsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::ListClientsResponse)
          res.list_clients_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::ReadClientRequest)).returns(Utils::FieldAugmented) }
    def read_client(request)
    # read_client - Read client
      base_url = @server_url
      url = Utils.generate_url(
        Operations::ReadClientRequest,
        base_url,
        '/api/auth/clients/{clientId}',
        request
      )

      r = @client.get(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ReadClientResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::ReadClientResponse)
          res.read_client_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::UpdateClientRequest)).returns(Utils::FieldAugmented) }
    def update_client(request)
    # update_client - Update client
      base_url = @server_url
      url = Utils.generate_url(
        Operations::UpdateClientRequest,
        base_url,
        '/api/auth/clients/{clientId}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :update_client_request, :json)
      headers['content-type'] = req_content_type

      r = @client.put(url) do |req|
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

      res = Operations::UpdateClientResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::UpdateClientResponse)
          res.update_client_response = out
        end
      end
      res
    end
  end
end
