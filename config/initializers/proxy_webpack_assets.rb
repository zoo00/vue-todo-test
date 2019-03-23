if Rails.env.development?
  require Rails.root.join('lib/rack/dev_server_proxy')

  # Use the hostname below for webpack-dev-server
  Rails.application.config.dev_server_host = 'localhost:3035'

  Rails.application.config.middleware.use DevServerProxy, ssl_verify_none: true
end
