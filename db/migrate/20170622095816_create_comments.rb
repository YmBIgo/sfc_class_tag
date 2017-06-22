class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|

      t.string     :href
      t.text       :content
      t.string     :image_url
      t.integer    :x_pos
      t.integer    :y_pos
      t.integer    :category

      t.timestamps
    end
  end
end
