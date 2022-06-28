class Bramki < ApplicationRecord
    belongs_to :mecz, foreign_key: 'id_meczu'
    belongs_to :strzelec, class_name: 'Zawodnik', foreign_key: 'id_strzelca'
    belongs_to :asystent, class_name: 'Zawodnik', foreign_key: 'id_asystenta'



    def display_strzelec
        "#{strzelec.imie} #{strzelec.nazwisko}"
    end

    def display_asystent
        "#{asystent.imie} #{asystent.nazwisko}"
     end
end
