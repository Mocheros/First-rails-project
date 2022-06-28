class Kolejka < ApplicationRecord
  has_many :meczs

  validates :data_rozpoczecia, presence: true
  validates :data_zakonczenia, presence: true
  validates :nr, presence: true

  def display_name
    "#{id}"
  end
end
