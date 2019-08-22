class Ingredient < ApplicationRecord
  include PgSearch
  multisearchable against: [ :name ]

  has_many :doses
  has_many :cocktails, through: :doses

  validates :name, presence: true, uniqueness: true
end
