class Zespol < ApplicationRecord
  has_many :zawodniks
  has_many :meczs
  has_one :tabelabu
  has_many :gospodarze , class_name: 'Mecz', foreign_key: 'id_pierwszego'
  has_many :goscie , class_name: 'Mecz', foreign_key: 'id_drugiego'

  validates :nazwa, presence: true
  validates :stadion, presence: true

    def display_name
      "#{nazwa}"
    end
  end

