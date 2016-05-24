Rails.application.config.before_initialize do
	Goodreads.configure(
	  :api_key => Rails.application.secrets.goodreads_key,
	  :api_secret => Rails.application.secrets.goodreads_secret
	)
end