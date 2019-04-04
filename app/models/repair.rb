class Repair < ApplicationRecord
  belongs_to :owner
<<<<<<< HEAD
  has_many :volunteer_repairs, dependent: :delete_all
=======

  validates :repair_type, :repair_notes, presence: true
>>>>>>> master
end
