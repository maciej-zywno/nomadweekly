class AddDescriptionToLink < ActiveRecord::Migration
  def change
    add_column :links, :description, :text
  end
end
