class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :artist
      t.string :album
      t.text :lyrics

      t.timestamps
    end
  end
end
