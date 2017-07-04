class CreateHenshins < ActiveRecord::Migration[5.0]
  def self.up
    create_table :henshins do |t|
      t.integer     :comment_id
      t.integer     :user_id
      t.text        :content
      t.timestamps
    end
    add_column :comments, :user_id, :integer
  end
  def self.down
    drop_table :henshins
    remove_column :comments, :user_id, :integer
  end
end
