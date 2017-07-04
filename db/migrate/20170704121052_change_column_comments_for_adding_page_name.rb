class ChangeColumnCommentsForAddingPageName < ActiveRecord::Migration[5.0]
  def self.up
    add_column :comments, :page_name, :string
  end
  def self.down
    remove_column :comments, :page_name, :string
  end
end
