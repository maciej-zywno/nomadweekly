class Link < ActiveRecord::Base
  belongs_to :issue
  validates_presence_of :url, :author, :description
end
