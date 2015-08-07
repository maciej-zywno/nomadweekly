class AddNumberAndScheduledAtToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :number, :integer
    add_column :issues, :scheduled_at, :datetime
  end
end
