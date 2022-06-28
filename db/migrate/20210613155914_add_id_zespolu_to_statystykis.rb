class AddIdZespoluToStatystykis < ActiveRecord::Migration[6.1]
  def change
    add_column :statystykis, :id_zespolu, :integer
  end
end
