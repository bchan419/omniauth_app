# class AuthControllerController < ApplicationController
#   
#   def index
#     client = LinkedIn::Client.new
#     client.authorize_from_access("access_token", "access_token_secret")
#    
#     request_token = client.request_token(:oauth_callback => "http://#{request.host_with_port}/auth/callback")
#     
#     session[:rtoken] = request_token.token
#     session[:rsecret] = request_token.secret
#     
#     redirect_to client.request_token.authorize_url
#     
#   end
#   
#   def callback
#     client = LinkedIn::Client.new
#   end
#   
# end
