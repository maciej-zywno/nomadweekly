require 'mailchimp'

class SubscribesController < ApplicationController

  def create
    type, message = MailchimpClient.new.subscribe(params[:subscribe][:email])
    flash[type] = message
    if type == :error
      redirect_to root_path
    else
      redirect_to page_path('subscription_ok')
    end
  end

end
