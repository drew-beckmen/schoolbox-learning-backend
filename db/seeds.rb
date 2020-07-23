# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'kimurai'
require 'pry'
class CourseScraper < Kimurai::Base 
    @name = 'recommendations_crawler'
    @start_urls = ['https://www.classcentral.com/report/most-popular-online-courses/']
    @engine = :selenium_chrome

    def parse(response, url, data: {})
        info = response.css('ol')[0].css('li')
        info.each do |course| 
            title, creator = course.text.split(" from ")
            creator = creator.split(" ★")[0]
            link = course.css("a")[0].attributes["href"].value.gsub(/\n/, "")
            Recommendation.create(title: title, link: link, creator: creator)
        end
    end 
end 

CourseScraper.crawl! 