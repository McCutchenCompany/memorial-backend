MemorialBackend::Application.config.secret_key_base = if Rails.env.development? or Rails.env.test? or Rails.env.staging? # generate simple key for test and development environments
  ('a' * 30) # should be at least 30 chars long
else
  ENV['RAILS_MASTER_KEY']
end