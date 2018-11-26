# require "open-uri"
# require "json"
# require "date"
# require "nokogiri"



# class ScrapingJob < ApplicationJob
#   queue_as :default

#   def perform(*args)

# # browser = Watir::Browser.new
#     url = "https://www.lonelyplanet.com/england/london/restaurants/a/poi-eat/358914"

#     page = Nokogiri::HTML(open(url))
#     base = "https://www.lonelyplanet.com"
#     page.search(".ListItem-title").each do |e|
#       p link = base + e.search("a").first["href"]
#       s_page = Nokogiri::HTML(open(link))
#       restaurant = s_page.search("h1").text
#       address = s_page.search(".styles__infoItem___72gXC").first.text
#       postcode_p1 = s_page.search(".styles__infoItem___72gXC")[1].text
#       postcode_p2 = s_page.search(".styles__infoItem___72gXC")[2].text
#       p restaurant
#       p address
#       p postcode_p1
#       p postcode_p2
#     end
#     # Activity.create!(
#     #   title: restaurant,
#     #   location: address
#     #   ph

#     #   )
#     # Do something later
#   end
# end
