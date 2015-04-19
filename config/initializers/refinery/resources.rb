# encoding: utf-8
Refinery::Resources.configure do |config|
  # Configures the maximum allowed upload size (in bytes) for a file upload
  # config.max_file_size = 52428800

  # Configure how many resources per page should be displayed when a dialog is presented that contains resources
  # config.pages_per_dialog = 12

  # Configure how many resources per page should be displayed in the list of resources in the admin area
  # config.pages_per_admin_index = 20

  # Configure S3 (you can also use ""# The s3_backend setting by default defers to the core setting for this but can be set just for resources.
  config.s3_backend = Refinery::Core.s3_backend
  config.s3_bucket_name = "jeunesse-uk"
  config.s3_access_key_id = "AKIAJYLNIVMZOXOM7ZAQ"
  config.s3_secret_access_key = "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"
  config.s3_region = "eu-west-1"

  # Configure Dragonfly
  # This is where in the middleware stack to insert the Dragonfly middleware
  # config.dragonfly_insert_before = "ActionDispatch::Callbacks"
  # config.dragonfly_secret = "a906a469956df09882110a37ab44ece879d923571e136b0f"
  # config.dragonfly_url_format = "/system/resources/:job/:basename.:ext"
  # config.dragonfly_url_host = ""
  # config.datastore_root_path = "/home/thomas/mojeapp/jeunesse/public/system/refinery/resources"
  # config.content_disposition = :attachment

  # Configure Dragonfly custom storage backend
  # The custom_backend setting by default defers to the core setting for this but can be set just for resources.
  # config.custom_backend_class = nil
  # config.custom_backend_opts = {}

end
