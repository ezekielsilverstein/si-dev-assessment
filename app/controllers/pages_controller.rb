require 'rubygems'
require 'twilio-ruby'
require 'json'


class PagesController < ApplicationController
  def home
  end

  def sms
    #@client = Twilio::REST::Client.new String(ENV["ACCOUNT_SID"]), String(ENV["AUTH_TOKEN"])
    @client = Twilio::REST::Client.new "AC3f3e3c18f526ecfd6b0e038c400382cf", "dfa29c58e7b3d417ce69c9d8ab0f5f20"
    message = @client.account.messages.create(
      :body => "#{params[:text]}",
      :to => "+1" + "#{params[:num]}",
      #:from => String(ENV["FROM_NUM"]))
      :from => "+16178588362")
  end
end
