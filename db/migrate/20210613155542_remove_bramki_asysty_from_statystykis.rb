class RemoveBramkiAsystyFromStatystykis < ActiveRecord::Migration[6.1]
  def change
    remove_column :statystykis, :asysty, :integer
  end
end
