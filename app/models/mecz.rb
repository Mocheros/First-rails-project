class Mecz < ApplicationRecord
   has_many :sklads
   belongs_to :gospodarze , class_name: 'Zespol', foreign_key: 'id_pierwszego'
   belongs_to :goscie , class_name: 'Zespol', foreign_key: 'id_drugiego'
   belongs_to :kolejka,  class_name: 'Kolejka', foreign_key: 'nr_kolejki'


   def display_name
      "#{gospodarze.nazwa} vs #{goscie.nazwa} #{termin}"
   end

   def display_name2
      "#{gospodarze.nazwa} vs #{goscie.nazwa}"
   end

   def display_date
      "#{termin}"
   end

   def display_team1
      "#{gospodarze.nazwa}"
   end

   def display_team2
      "#{goscie.nazwa}"
   end

   def display_id1
      "#{gospodarze.id}"
   end

   def display_id2
      "#{goscie.id}"
   end

end
