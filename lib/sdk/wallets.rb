# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Wallets
    extend T::Sig
    sig { params(sdk: OpenApiSDK::SDK, client: Faraday::Connection, server_url: String, sdk_version: String, gen_version: String).void }
    def initialize(sdk, client, server_url, sdk_version, gen_version)
      @sdk = sdk
      @client = client
      @server_url = server_url
      @sdk_version = sdk_version
      @gen_version = gen_version
    end
sig { params(request: T.nilable(Operations::ConfirmHoldRequest)).returns(Utils::FieldAugmented) }
    def confirm_hold(request)
    # confirm_hold - Confirm a hold
      base_url = @server_url
      url = Utils.generate_url(
        Operations::ConfirmHoldRequest,
        base_url,
        '/api/wallets/holds/{hold_id}/confirm',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :confirm_hold_request, :json)
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

      res = Operations::ConfirmHoldResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::WalletsErrorResponse)
          res.wallets_error_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::CreateBalanceRequest)).returns(Utils::FieldAugmented) }
    def create_balance(request)
    # create_balance - Create a balance
      base_url = @server_url
      url = Utils.generate_url(
        Operations::CreateBalanceRequest,
        base_url,
        '/api/wallets/wallets/{id}/balances',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :create_balance_request, :json)
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

      res = Operations::CreateBalanceResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::CreateBalanceResponse)
          res.create_balance_response = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::WalletsErrorResponse)
          res.wallets_error_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Shared::CreateWalletRequest)).returns(Utils::FieldAugmented) }
    def create_wallet(request)
    # create_wallet - Create a new wallet
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/api/wallets/wallets"
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

      res = Operations::CreateWalletResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::CreateWalletResponse)
          res.create_wallet_response = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::WalletsErrorResponse)
          res.wallets_error_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::CreditWalletRequest)).returns(Utils::FieldAugmented) }
    def credit_wallet(request)
    # credit_wallet - Credit a wallet
      base_url = @server_url
      url = Utils.generate_url(
        Operations::CreditWalletRequest,
        base_url,
        '/api/wallets/wallets/{id}/credit',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :credit_wallet_request, :json)
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

      res = Operations::CreditWalletResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::WalletsErrorResponse)
          res.wallets_error_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::DebitWalletRequest)).returns(Utils::FieldAugmented) }
    def debit_wallet(request)
    # debit_wallet - Debit a wallet
      base_url = @server_url
      url = Utils.generate_url(
        Operations::DebitWalletRequest,
        base_url,
        '/api/wallets/wallets/{id}/debit',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :debit_wallet_request, :json)
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

      res = Operations::DebitWalletResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::DebitWalletResponse)
          res.debit_wallet_response = out
        end
      elsif r.status == 204
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::WalletsErrorResponse)
          res.wallets_error_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::GetBalanceRequest)).returns(Utils::FieldAugmented) }
    def get_balance(request)
    # get_balance - Get detailed balance
      base_url = @server_url
      url = Utils.generate_url(
        Operations::GetBalanceRequest,
        base_url,
        '/api/wallets/wallets/{id}/balances/{balanceName}',
        request
      )

      r = @client.get(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetBalanceResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::GetBalanceResponse)
          res.get_balance_response = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::WalletsErrorResponse)
          res.wallets_error_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::GetHoldRequest)).returns(Utils::FieldAugmented) }
    def get_hold(request)
    # get_hold - Get a hold
      base_url = @server_url
      url = Utils.generate_url(
        Operations::GetHoldRequest,
        base_url,
        '/api/wallets/holds/{holdID}',
        request
      )

      r = @client.get(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetHoldResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::GetHoldResponse)
          res.get_hold_response = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::WalletsErrorResponse)
          res.wallets_error_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::GetHoldsRequest)).returns(Utils::FieldAugmented) }
    def get_holds(request)
    # get_holds - Get all holds for a wallet
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/api/wallets/holds"
      query_params = Utils.get_query_params(Operations::GetHoldsRequest, request)

      r = @client.get(url) do |req|
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetHoldsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::GetHoldsResponse)
          res.get_holds_response = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::WalletsErrorResponse)
          res.wallets_error_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::GetTransactionsRequest)).returns(Utils::FieldAugmented) }
    def get_transactions(request)

      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/api/wallets/transactions"
      query_params = Utils.get_query_params(Operations::GetTransactionsRequest, request)

      r = @client.get(url) do |req|
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetTransactionsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::GetTransactionsResponse)
          res.get_transactions_response = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::WalletsErrorResponse)
          res.wallets_error_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::GetWalletRequest)).returns(Utils::FieldAugmented) }
    def get_wallet(request)
    # get_wallet - Get a wallet
      base_url = @server_url
      url = Utils.generate_url(
        Operations::GetWalletRequest,
        base_url,
        '/api/wallets/wallets/{id}',
        request
      )

      r = @client.get(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetWalletResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::GetWalletResponse)
          res.get_wallet_response = out
        end
      elsif r.status == 404
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::WalletsErrorResponse)
          res.wallets_error_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::ListBalancesRequest)).returns(Utils::FieldAugmented) }
    def list_balances(request)
    # list_balances - List balances of a wallet
      base_url = @server_url
      url = Utils.generate_url(
        Operations::ListBalancesRequest,
        base_url,
        '/api/wallets/wallets/{id}/balances',
        request
      )

      r = @client.get(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListBalancesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::ListBalancesResponse)
          res.list_balances_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::ListWalletsRequest)).returns(Utils::FieldAugmented) }
    def list_wallets(request)
    # list_wallets - List all wallets
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/api/wallets/wallets"
      query_params = Utils.get_query_params(Operations::ListWalletsRequest, request)

      r = @client.get(url) do |req|
        req.params = query_params
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListWalletsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::ListWalletsResponse)
          res.list_wallets_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::UpdateWalletRequest)).returns(Utils::FieldAugmented) }
    def update_wallet(request)
    # update_wallet - Update a wallet
      base_url = @server_url
      url = Utils.generate_url(
        Operations::UpdateWalletRequest,
        base_url,
        '/api/wallets/wallets/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type

      r = @client.patch(url) do |req|
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

      res = Operations::UpdateWalletResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::WalletsErrorResponse)
          res.wallets_error_response = out
        end
      end
      res
    end
sig { params(request: T.nilable(Operations::VoidHoldRequest)).returns(Utils::FieldAugmented) }
    def void_hold(request)
    # void_hold - Cancel a hold
      base_url = @server_url
      url = Utils.generate_url(
        Operations::VoidHoldRequest,
        base_url,
        '/api/wallets/holds/{hold_id}/void',
        request
      )

      r = @client.post(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::VoidHoldResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::WalletsErrorResponse)
          res.wallets_error_response = out
        end
      end
      res
    end
sig { returns(Utils::FieldAugmented) }
    def walletsget_server_info
    # walletsget_server_info - Get server info
      base_url = @server_url
      url = "#{base_url.delete_suffix('/')}/api/wallets/_info"

      r = @client.get(url) do |req|
        Utils.configure_request_security(req, @sdk.security) if !@sdk.nil? && !@sdk.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::WalletsgetServerInfoResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::ServerInfo)
          res.server_info = out
        end
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::WalletsErrorResponse)
          res.wallets_error_response = out
        end
      end
      res
    end
  end
end