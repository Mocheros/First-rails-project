class CreateStrzelecs < ActiveRecord::Migration[6.1]
  def change
    create_table :strzelecs do |t|
      t.integer :id_zawodnika
      t.string :imie
      t.string :nazwisko
      t.integer :liczba_goli


      t.timestamps
    end
  end
end
