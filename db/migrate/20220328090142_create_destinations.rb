class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :destination, null:false
      t.string :date
      t.string :via1
      t.string :via2
      t.string :via3
      t.string :via4
      t.string :via5
      t.text :url1
      t.text :url2
      t.text :url3
      t.string :url4
      t.string :url5
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end

    add_index :destinations, [:user_id, :created_at]
  end
end
