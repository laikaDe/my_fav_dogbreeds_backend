class CreateDogbreeds < ActiveRecord::Migration[6.1]
  def change
    create_table :dogbreeds do |t|
      t.string :bred_for
      t.string :breed_group
      t.string :height
      t.string :weight
      t.string :image_url
      t.string :life_span
      t.string :name
      t.string :origin
      t.string :temperament

      t.timestamps
    end
  end
end
