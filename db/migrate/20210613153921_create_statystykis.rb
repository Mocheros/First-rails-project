class CreateStatystykis < ActiveRecord::Migration[6.1]
  def change
    create_table :statystykis do |t|
      t.integer :id_meczu
      t.integer :id_zawodnika
      t.integer :bramki_strzelone
      t.integer :asysty
      t.integer :zolte_kartki
      t.integer :czerwone_kartki

      t.timestamps
    end
  end
end
