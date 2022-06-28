class RemoveBramkiStrzeloneFromStatystykis < ActiveRecord::Migration[6.1]
  def change
    remove_column :statystykis, :bramki_strzelone, :integer
  end
end
