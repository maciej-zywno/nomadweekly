class SubscribesController < ApplicationController

  def create
    type, message = MailchimpClient.new.subscribe(params[:subscribe][:email])
    flash[type] = message
    if type == :success
      redirect_to page_path('subscription_ok')
    else
      redirect_to root_path
    end
  end

end
