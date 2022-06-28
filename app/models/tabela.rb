class Tabela < ApplicationRecord
  belongs_to :Zespols, class_name: 'Zespol', foreign_key: 'id_zespolu'
end
