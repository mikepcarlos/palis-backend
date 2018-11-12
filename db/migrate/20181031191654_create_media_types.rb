class CreateMediaTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :media_types do |t|
      t.string :name
      t.string :format
      t.string :genre
      t.string :bio
      t.string :img

      t.timestamps
    end
  end
end
