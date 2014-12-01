require "twitter"
require "dotenv"

Dotenv.load

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['CONSUMER_KEY']
  config.consumer_secret     = ENV['CONSUMER_SECRET']
  config.access_token        = ENV['ACCESS_KEY']
  config.access_token_secret = ENV['ACCESS_SECRET']
end

client.update(ARGV[0])