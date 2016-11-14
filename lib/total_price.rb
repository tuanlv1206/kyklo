require 'nokogiri'
require 'open-uri'
module TotalPrice
	def self.calculation(policy, base_price)
		total_price = 0
		base_price = base_price.to_i
		case policy

		when "Flexible"
			url = 'http://www.reuters.com/'
			text = nokogiri_code(url)
			a_count = text.count('a')
	  	margin = a_count/100
	  	total_price = base_price * margin
		when "Fixed"
			url = 'https://developer.github.com/v3/#http-redirects'
			text = nokogiri_code(url)
			words = text.scan(/\w+/)
			margin = words.count("status")
			total_price = base_price + margin
		when "Prestige"
      url = 'http://www.yourlocalguardian.co.uk/sport/rugby/rss/'
			doc = Nokogiri::XML(open(url))
      margin = doc.css("pubDate").length
	  	total_price = base_price + margin
		end
		total_price
	end

	def self.nokogiri_code(url)
		doc = Nokogiri.HTML(open(url))
		doc.css('script').remove
		doc.css('style').remove
		text  = doc.at('body').inner_text
	end
end
