class CreateZawodniks < ActiveRecord::Migration[6.1]
  def change
    create_table :zawodniks do |t|
      t.string :imie
      t.string :nazwisko
      t.integer :id_zespolu
      t.string :narodowosc
      t.date :rok_urodzenia
      t.integer :numer


      t.timestamps
    end
  end
end
