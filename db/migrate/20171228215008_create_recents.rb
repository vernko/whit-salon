class CreateRecents < ActiveRecord::Migration[5.1]
  def change
    create_table :recents do |t|
      t.string :Cuts
      t.string :title
      t.string :subtitle
      t.text :body
      t.text :main_image
      t.text :thumb_image

      t.timestamps
    end
  end
end
