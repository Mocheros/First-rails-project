class AddBramkiStrzeloneToStatystykis < ActiveRecord::Migration[6.1]
  def change
    add_column :statystykis, :bramki_strzelone, :integer
  end
end
