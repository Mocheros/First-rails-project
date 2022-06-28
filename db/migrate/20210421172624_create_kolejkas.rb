class CreateKolejkas < ActiveRecord::Migration[6.1]
  def change
    create_table :kolejkas do |t|
      t.date :data_rozpoczecia
      t.date :data_zakonczenia

      t.timestamps
    end
  end
end
