require 'httparty'
require 'nokogiri'

uri = "http://movie.naver.com/movie/sdb/rank/rmovie.nhn"

response = HTTParty.get(uri)
# response = HTTParty.get uri

# puts response

text = Nokogiri::HTML(response.body)

# puts text

for i in (2..11)
	cssText = "#old_content > table > tbody > tr:nth-child(" + i.to_s + ") > td.title > div > a"
	movie = text.css(cssText)
	puts (i - 1).to_s + "위 " + movie.text
end