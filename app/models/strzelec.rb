class Strzelec < ApplicationRecord
  belongs_to :zawodnik, class_name: 'Zawodnik', foreign_key: 'id_zawodnika'
end
