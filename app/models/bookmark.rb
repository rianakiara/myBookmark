class Bookmark < ActiveRecord::Base
  attr_accessible :description, :url, :title

  #relationships
  belongs_to :user
  has_many :categories

  validates_format_of :url, :with => URI::regexp(%w(http https))

end
