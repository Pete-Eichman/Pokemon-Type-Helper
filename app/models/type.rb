class Type < ApplicationRecord
  has_many :reactions
  has_many :defenders, through: :reactions

  validates :typename, presence: true
end
