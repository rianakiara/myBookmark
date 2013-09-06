class Category < ActiveRecord::Base
  attr_accessible :description, :title

  #relationships
  has_and_belongs_to_many :bookmarks
end