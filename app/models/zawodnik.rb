class Zawodnik < ApplicationRecord
  belongs_to :zespol , class_name: 'Zespol', foreign_key: 'id_zespolu'
  has_many :bramkis
  has_many :strzelec , class_name: 'Bramki', foreign_key: 'id_strzelca'
  has_many :asystent , class_name: 'Bramki', foreign_key: 'id_asystenta'
  has_many :kartkac
  has_many :kartkaz

  validates :imie, presence: true
  validates :nazwisko, presence: true
  validates :narodowosc, presence: true
  validates :rok_urodzenia, presence: true
  validates :numer, presence: true


  def display_name
    "#{imie} #{nazwisko}"
  end

  def display_strzelec
    "#{strzelec.imie} #{strzelec.nazwisko}"
  end

end
