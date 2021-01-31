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
    @server_port = request.env["SERVER_PORT"]
    request.headers.sort.map { |k, v| logger.info "#{k}:#{v}" }
  end
end
