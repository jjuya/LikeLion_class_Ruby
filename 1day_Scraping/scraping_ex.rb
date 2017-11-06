require 'httparty'
require 'nokogiri'

uri = "http://finance.naver.com/sise/"

# HTTParty를 통해 url에 있는 정보를 가져온다.
response = HTTParty.get(uri)
# response = HTTParty.get uri

# puts response

# Nokogiri를 통해 검색이 용이한 정보로 바꾼다.
text = Nokogiri::HTML(response.body)

# Nokogiri : http://www.nokogiri.org/tutorials/searching_a_xml_html_document.html

# puts text

# .css를 이용해 셀렉터를 기준으로 요소를 검색한다.
kospi = text.css('#KOSPI_now')

# .text를 써서 태그 안에 있는 요소를 가져온다.
puts kospi.text