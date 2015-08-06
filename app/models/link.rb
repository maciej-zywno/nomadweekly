class Link < ActiveRecord::Base
  has_one :issue
  validates_presence_of :url
end
