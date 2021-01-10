class CreateGifts < ActiveRecord::Migration[6.1]
  def change
    create_table :gifts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true
      t.string :name
      t.binary :image
      t.string :url
      t.string :notes
      t.boolean :bought
      t.string :bought_by

      t.timestamps
    end
  end
end
