# require "open-uri"
# require "json"
# require "date"
# require "nokogiri"



# class ScrapingJob < ApplicationJob
#   queue_as :default

#   def perform(*args)
#     url = "https://www.opentable.co.uk/s/?covers=2&dateTime=2018-11-27%2019%3A00&latitude=51.53&longitude=-0.08&metroId=72&term=london&enableSimpleCuisines=true&includeTicketedAvailability=true&pageType=0"

#     page = Nokogiri::HTML(open(url))

#     page.search(".result img").each do |e|
#       p e["data-src"]

#       # p link = base + e.search("a").first["href"]
#       # s_page = Nokogiri::HTML(open(link))
#       # restaurant = s_page.search("h1").text
#       # address = s_page.search(".street-address").text.strip
#       # postcode = s_page.search(".locality").text
#       # p restaurant
#       # p address
#       # p postcode
#     end
#     # Activity.create!(
#     #   title: restaurant,
#     #   location: address
#     #   ph

#     #   )
#     # Do something later
#   end
# end
