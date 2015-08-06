class Issue < ActiveRecord::Base
  has_many :link
  validates_presence_of :description, :author
end
