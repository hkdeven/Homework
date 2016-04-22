require 'httparty'

url_to_scrape = ARGV[1]

response = HTTParty.get (url_to_scrape)
puts response.headers
puts response.body
