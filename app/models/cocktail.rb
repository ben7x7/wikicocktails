class Cocktail < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name ],
    associated_against: {
      ingredient: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }

  has_many :ingredients, through: :doses
  has_many :doses, dependent: :destroy
  has_many :reviews
  validates :name, presence: true, uniqueness: true
end
