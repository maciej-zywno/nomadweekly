class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :author
      t.text :description
      t.references :link, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
