class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :author
      t.text :description

      t.timestamps null: false
    end
  end
end
