# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "#{Rails.root}/lib/scraper.rb"


index_html = "http://students.flatironschool.com"

scraper = Scraper.new
scraper.scrape_index(index_html)
scraper.scrape_students(index_html)
# pp scraper.students
pp scraper.students.size

Student.delete_all

scraper.students.each do |s|
  pp s
  Student.create(:name     => s[1][:name], 
                 :url      => s[1][:url],
                 :img      => s[1][:img],
                 :tagline  => s[1][:tagline],
                 :bio      => s[1][:bio],
                 :prof_pic => s[1][:prof_pic],
                 :twitter  => s[1][:twitter], 
                 :linkedin => s[1][:linkedin], 
                 :github   => s[1][:github], 
                 :blog     => s[1][:blog],
                 :quote    => s[1][:quote] 
                 )
end