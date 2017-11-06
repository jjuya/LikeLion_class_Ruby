require 'httparty'
require 'nokogiri'
require 'launchy'

busuri = "http://openapi.gbis.go.kr/ws/rest/busrouteservice?serviceKey=[user key]&keyword="

buskeywords = ["M7426", "M7111", "M7625"]

# buskeywords.each do |keyword|
#     Launchy.open(busuri + keyword)
# end

for i in (0 ... buskeywords.length)
	response = HTTParty.get(busuri + buskeywords[i])

	# Nokogiri를 사용한 XML 정보 
	text = Nokogiri::XML(response.body)

	# regionName의 요소만 출력
	puts buskeywords[i] + " : " + text.xpath("//busRouteList//regionName").text
end