require 'rails_helper'

RSpec.describe Issue, type: :model do
  it { should validate_presence_of :description }
  it { should validate_presence_of :title }
  it { should validate_presence_of :number }
  it { should validate_presence_of :scheduled_at }
end
