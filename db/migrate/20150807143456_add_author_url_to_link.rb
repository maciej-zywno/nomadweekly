class AddAuthorUrlToLink < ActiveRecord::Migration
  def change
    add_column :links, :author_url, :string
  end
end
