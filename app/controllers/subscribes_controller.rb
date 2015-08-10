class SubscribesController < ApplicationController

  def create
    # success, message = MailchimpClient.new.subscribe(params[:email])
    # flash[success] = message
    redirect_to root_path, notice: "#{params[:email]} #{params[:id]}"

  end

end
