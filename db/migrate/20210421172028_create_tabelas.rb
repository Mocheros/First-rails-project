class CreateTabelas < ActiveRecord::Migration[6.1]
  def change
    create_table :tabelas do |t|
      t.integer :id_zespolu
      t.integer :punkty
      t.integer :zwyciestwa
      t.integer :porazki
      t.integer :remisy
      t.integer :gole_strzelone
      t.integer :gole_stracone

      t.timestamps
    end
  end
end
