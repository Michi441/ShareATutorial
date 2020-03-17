class CreateTutorials < ActiveRecord::Migration[5.2]
  def change
    create_table :tutorials do |t|
      t.string :title
      t.text :description
      t.references :user, foreign_key: true
      t.string :link
      t.string :image_link

      t.timestamps
    end
  end
end
