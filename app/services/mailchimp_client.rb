class MailchimpClient

  MAILCHIMP_API_KEY = Figaro.env.mailchimp_api_key
  MAILCHIMP_LIST_ID = Figaro.env.mailchimp_list_id

  def subscribe(email)
    begin
      _subscribe(email)

    rescue Mailchimp::ListAlreadySubscribedError
      [:error, "#{email} is already subscribed to the list"]
    rescue Mailchimp::ListDoesNotExistError
      [:error, "The list #{MAILCHIMP_LIST_ID} could not be found"]
    rescue Mailchimp::Error => ex
      [:error, ex.message ? ex.message : 'An unknown error occurred']
    end
  end

  private

    def _subscribe(email)
      mc = Mailchimp::API.new(MAILCHIMP_API_KEY)
      mc.lists.subscribe(MAILCHIMP_LIST_ID, {'email' => email})
    end

end