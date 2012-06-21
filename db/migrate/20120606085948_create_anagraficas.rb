class CreateAnagraficas < ActiveRecord::Migration
  def change
    create_table :anagraficas do |t|
      t.string :nome
      t.date :data
      t.string :indirizzo
      t.string :citta

      t.timestamps
    end
  end
end
