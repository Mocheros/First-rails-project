class CreateHomes < ActiveRecord::Migration[6.1]
  def change
    create_table :homes do |t|
      t.string :tytul
      t.text :opis

      t.timestamps
    end
  end
end
