class CreateBramkis < ActiveRecord::Migration[6.1]
  def change
    create_table :bramkis do |t|
      t.integer :id_meczu
      t.integer :id_strzelca
      t.integer :id_asystenta
      t.integer :minuta

      t.timestamps
    end
  end
end
