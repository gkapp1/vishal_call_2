class StaticPagesController < ApplicationController
  def home
  end
  
  def success
  end

  private
  def send_call
    receiver = '+17323257565'
    phone_number = '+16502739905'
    account_sid = 'ACde16f587e2e3db8b5e00d2f1d1f15fb3'
    auth_token = 'f758b3ad8c03bbdae2612ebf1a936d1f'

    client = Twilio::REST::Client.new account_sid, auth_token
    client.account.calls.create(
    	:from => phone_number,
    	:to => receiver,
      :url => 'http://twimlets.com/message?Message%5B0%5D=Hello%20Vishal.%20This%20call%20is%20being%20sent%20to%20you%20by%20a%20user%20of%20the%20%22Vishal%20Call%22%20web%20app.%20The%20Vishal%20Call%20Project%2C%20or%20VCP%2C%20was%20born%20from%20a%20collaboration%20between%20Maker%20Thursdays%2C%20Twilio%2C%20Code%20Academy%2C%20beer%2C%20and%20Lumosity.com.%20You%20should%20look%20forward%20to%20receiving%20many%20more%20phone%20calls%20exactly%20like%20this%20one!%20Good%20day.&')
  end
  
  helper_method :send_call
end
