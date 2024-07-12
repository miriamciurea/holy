# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*' # You can specify allowed origins here
    # origins 'http://127.0.0.1:5173/'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      expose: ['Authorization'], # Headers exposed to the browser
      max_age: 600 # How long to cache preflight responses
  end
end
