class ApplicationController < ActionController::Base
  before_action :basic_auth
  protect_from_forgery with: :exception

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      # "credentialファイルを通すと上手くいかないのでとりあえず、そのまま環境変数を記載する"
      # username == Rails.application.credentials[:basic_auth_user] && password == Rails.application.credentials[:basic_auth_password]
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end
