class SmsSendController < ApplicationController

  def index
  end 

  def create
    number_to_send_to = params[:number_to_send_to]
    sms_from_users = params[:sms_from_users]
    Twilio::SMS.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => sms_from_users
    )
  end

	
end
