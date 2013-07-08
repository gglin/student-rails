class Student < ActiveRecord::Base
  attr_accessible :bio, :blog, :github, :img, :linkedin, :name, :prof_pic, :quote, :tagline, :twitter, :url

  validates :name, presence: true

  # validates :twitter, :github, :linkedin, :blog, :format => URI::regexp(%w(http https))
end
