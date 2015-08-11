require 'rails_helper'

RSpec.describe Link, type: :model do
  it { should validate_presence_of :url }
  it { should validate_presence_of :issue_id }
  it { should validate_presence_of :author }
  it { should validate_presence_of :author_url }
  it { should validate_presence_of :description }
end
