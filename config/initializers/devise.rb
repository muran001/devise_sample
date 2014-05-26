Devise.setup do |config|
  # config.secret_key = 'e7ff24a6bc34e7691aa1d73aafd771a4601e85336f8fcc28ae47bc3239c35664ef7a979195e317e41318485f2fcbe7ef2f1ebbdde6c70f4bff805b3de464b4a0'

  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  # config.mailer = 'Devise::Mailer'

  require 'devise/orm/active_record'

  # config.authentication_keys = [ :email ]

  # config.request_keys = []

  config.case_insensitive_keys = [ :email ]

  config.strip_whitespace_keys = [ :email ]

  # config.params_authenticatable = true

  # config.http_authenticatable = false

  # config.http_authenticatable_on_xhr = true

  # config.http_authentication_realm = 'Application'

  # config.paranoid = true

  config.skip_session_storage = [:http_auth]

  # config.clean_up_csrf_token_on_authentication = true

  #
  config.stretches = Rails.env.test? ? 1 : 10

  # config.pepper = '4ecfe88a3dc7dd73be8e4ea31e1d8187fe5c6adb83c37359bcfb50f0aafc9c6cb617783816ac36aeb65c0f9d2c8ff08a3ba7ff656801b353eb2c7359e3ef9e8a'

  # confirming their account. For instance, if set to 2.days, the user will be
  # config.allow_unconfirmed_access_for = 2.days

  # config.confirm_within = 3.days

  config.reconfirmable = true

  # config.confirmation_keys = [ :email ]

  # config.remember_for = 2.weeks

  # config.extend_remember_period = false

  # config.rememberable_options = {}

  config.password_length = 8..128

  # config.email_regexp = /\A[^@]+@[^@]+\z/

  # config.timeout_in = 30.minutes

  # config.expire_auth_token_on_timeout = false

  # config.lock_strategy = :failed_attempts

  # config.unlock_keys = [ :email ]

  # config.unlock_strategy = :both

  # config.maximum_attempts = 20

  # config.unlock_in = 1.hour

  # config.last_attempt_warning = false

  #
  # config.reset_password_keys = [ :email ]

  # change their passwords.
  config.reset_password_within = 6.hours

  #
  # config.encryptor = :sha512

  # config.scoped_views = false

  # config.default_scope = :user

  # config.sign_out_all_scopes = true

  # config.navigational_formats = ['*/*', :html]

  config.sign_out_via = :delete

  # config.omniauth :github, 'APP_ID', 'APP_SECRET', scope: 'user,public_repo'

  # change the failure app, you can configure them inside the config.warden block.
  #
  # config.warden do |manager|

  #
  #
  # config.router_name = :my_engine
  #
  # config.omniauth_path_prefix = '/my_engine/users/auth'
end
