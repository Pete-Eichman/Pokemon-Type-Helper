class Defender < ApplicationRecord
  has_many :reactions
  has_many :types, through: :reactions

  validates :maintype, presence: true, allow_blank: false
end
