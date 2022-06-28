class AddBramkiAsystyToStatystykis < ActiveRecord::Migration[6.1]
  def change
    add_column :statystykis, :asysty, :integer
  end
end
