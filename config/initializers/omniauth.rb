# 
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, CONSUMER_KEY, CONSUMER_SECRET
end

LinkedIn.configure do |config|
  config.token = CONSUMER_KEY
  config.secret = CONSUMER_SECRET
end