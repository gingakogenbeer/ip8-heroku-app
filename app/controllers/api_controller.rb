class ApiController < ApplicationController
  def api
    @access_log = {}
    @access_log.store("IP_ADDRESS", request.remote_ip)
    @access_log.store("ACCESS_TIME", Time.zone.now)
    @access_log.store("HTTP_HOST", request.env["HTTP_HOST"])
    @access_log.store("HTTP_VERSION", request.env["HTTP_VERSION"])
    @access_log.store("REQUEST METHOD", request.env["REQUEST_METHOD"])
    @access_log.store("REQUEST URI", request.env["REQUEST_URI"])
    #@access_log.store("BROWSER", UserAgent.parse(@user_agent).browser + UserAgent.parse(@user_agent).version)
    #@access_log.store("OS", UserAgent.parse(@user_agent).platform)
    @access_log.store("USER AGENT", request.env["HTTP_USER_AGENT"])
    @access_log.store("HTTP ACCEPT LANGUAGE", request.env["HTTP_ACCEPT_LANGUAGE"])
    @access_log.store("REMOTE HOST", request.remote_host)
    render status: 200, json: @access_log.to_json
  end
end
