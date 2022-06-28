class CreateZespols < ActiveRecord::Migration[6.1]
  def change
    create_table :zespols do |t|
      t.string :nazwa
      t.string :stadion


      t.timestamps
    end
  end
end
