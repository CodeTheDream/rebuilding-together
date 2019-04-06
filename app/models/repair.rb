class Repair < ApplicationRecord
  belongs_to :owner

  validates :repair_type, :repair_notes, presence: true
end
