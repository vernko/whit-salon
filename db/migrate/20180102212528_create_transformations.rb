class CreateTransformations < ActiveRecord::Migration[5.1]
  def change
    create_table :transformations do |t|
      t.string :title
      t.text :body
      t.text :before_image
      t.text :after_image

      t.timestamps
    end
  end
end
