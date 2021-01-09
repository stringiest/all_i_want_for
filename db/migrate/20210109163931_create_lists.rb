class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.date :event_date
      t.boolean :archived

      t.timestamps
    end
  end
end
