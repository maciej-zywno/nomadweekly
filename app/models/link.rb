class Link < ActiveRecord::Base
  belongs_to :issue
  validates_presence_of :issue_id, :url, :author, :author_url, :description
end
