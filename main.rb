require 'redis'
require 'oga'
require 'open-uri'

# REDIS_URL = (ENV['REDISTOGO_URL'] || 'redis://127.0.0.1:6379').freeze
# redis = Redis.new(url: REDIS_URL)
# redis.set(REDIS_KEY, VALUE)

BASE_URL = ''.freeze
html = open(INDEX_PAGE_URL).read
document = Oga.parse_html(html)

document.css('div.class').each do |div|
    p div
end
