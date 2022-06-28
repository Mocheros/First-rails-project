class Sklad < ApplicationRecord
  belongs_to :mecz , class_name: 'Mecz', foreign_key: 'id_meczu'
  belongs_to :zespol , class_name: 'Zespol', foreign_key: 'id_zespolu'
  has_many :zawodniks
  #belongs_to :zawodnik , class_name: 'Zawodnik', foreign_key: 'id_zawodnika'

  def display_zawodnik
    "#{imie} #{nazwisko}"
  end
  
end
