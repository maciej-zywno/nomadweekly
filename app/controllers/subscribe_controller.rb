class SubscribeController < ApplicationController

  def create
    begin
      mailchimp_subscribe(params[:email])

      flash[:success] = "#{params[:email]} subscribed successfully"
    rescue Mailchimp::ListAlreadySubscribedError
      flash[:error] = "#{params[:email]} is already subscribed to the list"
    rescue Mailchimp::ListDoesNotExistError
      flash[:error] = "The list could not be found"
    rescue Mailchimp::Error => ex
      flash[:error] = ex.message ? ex.message : "An unknown error occurred"
    end

    redirect_to root_path
  end

  private

    def mailchimp_subscribe(email)
      mc = Mailchimp::API.new(Figaro.env.mailchimp_api_key)
      mc.lists.subscribe(Figaro.env.mailchimp_list_id, {'email' => email})
    end

end
