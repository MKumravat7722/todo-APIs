Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*' # Use your React frontend URL in production

    resource '*',
      headers: :any,
      methods: [:get, :post, :patch, :put, :delete, :options]
  end
end
