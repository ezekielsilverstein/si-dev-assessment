require 'rubygems'
require 'twilio-ruby'
require 'json'


class PagesController < ApplicationController
  def home
  end

  def sms
    account_sid = "AC3f3e3c18f526ecfd6b0e038c400382cf"
    auth_token = "dfa29c58e7b3d417ce69c9d8ab0f5f20"
    @client = Twilio::REST::Client.new account_sid, auth_token
    message = @client.account.messages.create(
      :body => "#{params[:text]}",
      :to => "+1" + "#{params[:num]}",
      :from => "+16178588362")
  end
end
