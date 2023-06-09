# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Payments
    extend T::Sig
    sig { params(sdk: OpenApiSDK::SDK, client: Faraday::Connection, server_url: String, sdk_version: String, gen_version: String).void }
    def initialize(sdk, client, server_url, sdk_version, gen_version)
      @sdk = sdk
      @client = client
      @server_url = server_url
      @sdk_version = sdk_version
      @gen_version = gen_version
    end
sig { params(request: T.nilable(Shared::StripeTransferRequest)).returns(Utils::FieldAugmented) }
    def connectors_stripe_transfer(request)
    # connectors_stripe_transfer - Transfer funds between Stripe accounts
    # Execute a transfer between two Stripe accounts.
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/api/payments/connectors/stripe/transfer"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?

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

      res = Operations::ConnectorsStripeTransferResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Hash[Symbol, Object])
          res.stripe_transfer_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::GetConnectorTaskRequest)).returns(Utils::FieldAugmented) }
    def get_connector_task(request)
    # get_connector_task - Read a specific task of the connector
    # Get a specific task associated to the connector.
      base_url = @server_url
      url = Utils.generate_url(
        Operations::GetConnectorTaskRequest,
        base_url,
        '/api/payments/connectors/{connector}/tasks/{taskId}',
        request
      )

      r = @client.get(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetConnectorTaskResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::TaskResponse)
          res.task_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::GetPaymentRequest)).returns(Utils::FieldAugmented) }
    def get_payment(request)
    # get_payment - Get a payment
      base_url = @server_url
      url = Utils.generate_url(
        Operations::GetPaymentRequest,
        base_url,
        '/api/payments/payments/{paymentId}',
        request
      )

      r = @client.get(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetPaymentResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::PaymentResponse)
          res.payment_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::InstallConnectorRequest)).returns(Utils::FieldAugmented) }
    def install_connector(request)
    # install_connector - Install a connector
    # Install a connector by its name and config.
      base_url = @server_url
      url = Utils.generate_url(
        Operations::InstallConnectorRequest,
        base_url,
        '/api/payments/connectors/{connector}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?

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

      res = Operations::InstallConnectorResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      end
      res
    end
sig { returns(Utils::FieldAugmented) }
    def list_all_connectors
    # list_all_connectors - List all installed connectors
    # List all installed connectors.
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/api/payments/connectors"

      r = @client.get(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListAllConnectorsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::ConnectorsResponse)
          res.connectors_response = out
        end
      end
      res
    end
sig { returns(Utils::FieldAugmented) }
    def list_configs_available_connectors
    # list_configs_available_connectors - List the configs of each available connector
    # List the configs of each available connector.
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/api/payments/connectors/configs"

      r = @client.get(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListConfigsAvailableConnectorsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::ConnectorsConfigsResponse)
          res.connectors_configs_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::ListConnectorTasksRequest)).returns(Utils::FieldAugmented) }
    def list_connector_tasks(request)
    # list_connector_tasks - List tasks from a connector
    # List all tasks associated with this connector.
      base_url = @server_url
      url = Utils.generate_url(
        Operations::ListConnectorTasksRequest,
        base_url,
        '/api/payments/connectors/{connector}/tasks',
        request
      )
      query_params = Utils.get_query_params(Operations::ListConnectorTasksRequest, request)

      r = @client.get(url) do |req|
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListConnectorTasksResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::TasksCursor)
          res.tasks_cursor = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::ListPaymentsRequest)).returns(Utils::FieldAugmented) }
    def list_payments(request)
    # list_payments - List payments
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/api/payments/payments"
      query_params = Utils.get_query_params(Operations::ListPaymentsRequest, request)

      r = @client.get(url) do |req|
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListPaymentsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::PaymentsCursor)
          res.payments_cursor = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::PaymentslistAccountsRequest)).returns(Utils::FieldAugmented) }
    def paymentslist_accounts(request)
    # paymentslist_accounts - List accounts
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/api/payments/accounts"
      query_params = Utils.get_query_params(Operations::PaymentslistAccountsRequest, request)

      r = @client.get(url) do |req|
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::PaymentslistAccountsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::AccountsCursor)
          res.accounts_cursor = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::ReadConnectorConfigRequest)).returns(Utils::FieldAugmented) }
    def read_connector_config(request)
    # read_connector_config - Read the config of a connector
    # Read connector config
      base_url = @server_url
      url = Utils.generate_url(
        Operations::ReadConnectorConfigRequest,
        base_url,
        '/api/payments/connectors/{connector}/config',
        request
      )

      r = @client.get(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ReadConnectorConfigResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::ConnectorConfigResponse)
          res.connector_config_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::ResetConnectorRequest)).returns(Utils::FieldAugmented) }
    def reset_connector(request)
    # reset_connector - Reset a connector
    # Reset a connector by its name.
    # It will remove the connector and ALL PAYMENTS generated with it.
    # 
      base_url = @server_url
      url = Utils.generate_url(
        Operations::ResetConnectorRequest,
        base_url,
        '/api/payments/connectors/{connector}/reset',
        request
      )

      r = @client.post(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ResetConnectorResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      end
      res
    end
sig { params(request: T.nilable(Operations::UninstallConnectorRequest)).returns(Utils::FieldAugmented) }
    def uninstall_connector(request)
    # uninstall_connector - Uninstall a connector
    # Uninstall a connector by its name.
      base_url = @server_url
      url = Utils.generate_url(
        Operations::UninstallConnectorRequest,
        base_url,
        '/api/payments/connectors/{connector}',
        request
      )

      r = @client.delete(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::UninstallConnectorResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      end
      res
    end
  end
end
