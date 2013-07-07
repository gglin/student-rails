class Student < ActiveRecord::Base
  attr_accessible :bio, :blog, :github, :img, :linkedin, :name, :prof_pic, :quote, :tagline, :twitter, :url
end
