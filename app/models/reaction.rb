class Reaction < ApplicationRecord
  belongs_to :type
  belongs_to :defenders

  validates :value, presence: true
end
