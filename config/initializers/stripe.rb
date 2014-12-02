Rails.configuration.stripe = {
  :publishable_key => ENV['DAVEFIT_TEST_PUBLISHABLE_KEY'],
  :secret_key      => ENV['DAVEFIT_TEST_SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
