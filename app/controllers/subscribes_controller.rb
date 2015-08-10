class SubscribesController < ApplicationController

  def create
    success, message = MailchimpClient.new.subscribe(params[:subscribe][:email])
    flash[success] = message
    redirect_to root_path
  end

end
