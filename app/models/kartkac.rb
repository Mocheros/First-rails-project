class Kartkac < ApplicationRecord
    belongs_to :czerwona, class_name: 'Zawodnik', foreign_key: 'id_zawodnika'

    def display_czerwona
        "#{czerwona.imie} #{czerwona.nazwisko}"
    end
end
