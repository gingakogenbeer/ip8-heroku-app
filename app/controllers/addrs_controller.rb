class AddrsController < ApplicationController
  def index
    @remote_ip = request.remote_ip
    @user_agent = request.env["HTTP_USER_AGENT"]
    @http_host = request.env["HTTP_HOST"]
    @http_version = request.env["HTTP_VERSION"]
    @remote_addr = request.env["REMOTE_ADDR"]
    @request_method = request.env["REQUEST_METHOD"]
    @request_uri = request.env["REQUEST_URI"]
    @document_root = request.env["DOCUMENT_ROOT"]
    @http_version = request.env["HTTP_VERSION"]
    @http_accept_language = request.env["HTTP_ACCEPT_LANGUAGE"]
    @server_port = request.env["SERVER_PORT"]
    @access_time = Time.zone.now
    @remote_host = request.remote_host
    @browser = UserAgent.parse(@user_agent).browser
    @b_version = UserAgent.parse(@user_agent).version
    @platform = UserAgent.parse(@user_agent).platform

    #request.headers.sort.map { |k, v| logger.info "#{k}:#{v}" }
    
  end
end