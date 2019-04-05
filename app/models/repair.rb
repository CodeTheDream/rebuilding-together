class Repair < ApplicationRecord
  belongs_to :owner
  has_many :volunteer_repairs, dependent: :delete_all

  validates :repair_type, :repair_notes, presence: true
end
