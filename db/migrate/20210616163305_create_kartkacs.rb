class CreateKartkacs < ActiveRecord::Migration[6.1]
  def change
    create_table :kartkacs do |t|
      t.integer :id_meczu
      t.integer :id_zespolu
      t.integer :id_zawodnika
      t.integer :minuta

      t.timestamps
    end
  end
end
