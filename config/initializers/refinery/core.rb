# encoding: utf-8
Refinery::Core.configure do |config|
  # When true will rescue all not found errors and display a friendly error page
  config.rescue_not_found = Rails.env.production?

  # When true this will force SSL redirection in all Refinery backend controllers.
  # config.force_ssl = false

  # Set the S3 options using means other than securely by environment variables.
  # If you have to.
  #config.s3_backend = false
   #config.s3_bucket_name = "jeunesse-uk"
   #config.s3_region = "ireland"
   # config.s3_access_key_id = "AKIAJYLNIVMZOXOM7ZAQ"
   # config.s3_secret_access_key = "mojasunia20"

     config.s3_backend = Refinery::Core.s3_backend
  config.s3_bucket_name = "jeunesse-uk"
  config.s3_access_key_id = "AKIAIHRTGIKJLE6XJB2Q"
  config.s3_secret_access_key = "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"
  config.s3_region = "eu-west-1"

  # When true will use Amazon's Simple Storage Service instead of
  # the default file system for storing resources and images
  config.s3_backend = config.s3_access_key_id.present? || config.s3_secret_access_key.present?

  # Use a custom Dragonfly storage backend instead of the default
  # file system for storing resources and images
  # config.dragonfly_custom_backend_class = nil
  # config.dragonfly_custom_backend_opts = {}

  # Whenever Refinery caches anything and can set a cache key, it will add
  # a prefix to the cache key containing the string you set here.
  # config.base_cache_key = :refinery

  # Site name
  # config.site_name = "Company Name"

  # This activates Google Analytics tracking within your website. If this
  # config is left blank or set to UA-xxxxxx-x then no remote calls to
  # Google Analytics are made.
  # config.google_analytics_page_code = "UA-xxxxxx-x"

  # Enable/disable authenticity token on frontend
  # config.authenticity_token_on_frontend = false

  # Should set this if concerned about DOS attacks. See
  # http://markevans.github.com/dragonfly/file.Configuration.html#Configuration
  # config.dragonfly_secret = "a906a469956df09882110a37ab44ece879d923571e136b0f"

  # Register extra javascript for backend
  # config.register_javascript "prototype-rails"

  # Register extra stylesheet for backend (optional options)
  # config.register_stylesheet "custom", :media => 'screen'

  # Specify a different backend path than the default of "refinery".
  # Make sure you clear the `tmp/cache` directory after changing this setting.
  # config.backend_route = "refinery"

  # Specify a different Refinery::Core::Engine mount path than the default of "/".
  # Make sure you clear the `tmp/cache` directory after changing this setting.
  # config.mounted_path = "/"
end
