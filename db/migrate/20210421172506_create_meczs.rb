class CreateMeczs < ActiveRecord::Migration[6.1]
  def change
    create_table :meczs do |t|
      t.integer :id_pierwszego
      t.integer :id_drugiego
      t.integer :gole_pierwszego
      t.integer :gole_drugiego
      t.date :termin
      t.integer :nr_kolejki



      t.timestamps
    end
  end
end
