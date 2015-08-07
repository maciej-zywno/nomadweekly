class ChangeDbColumns < ActiveRecord::Migration
  def change
    add_column :links, :author, :string
    remove_column :issues, :author

  end
end
