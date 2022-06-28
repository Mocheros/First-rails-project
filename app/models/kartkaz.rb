class Kartkaz < ApplicationRecord
    belongs_to :zolta, class_name: 'Zawodnik', foreign_key: 'id_zawodnika'

    def display_zolta
        "#{zolta.imie} #{zolta.nazwisko}"
    end
end
