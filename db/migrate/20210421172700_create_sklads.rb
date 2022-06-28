class CreateSklads < ActiveRecord::Migration[6.1]
  def change
    create_table :sklads do |t|
      t.integer :id_meczu
      t.integer :id_zespolu
      t.integer :id_zawodnika
      t.string :pozycja


      t.timestamps
    end
  end
end
