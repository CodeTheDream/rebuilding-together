class Repair < ApplicationRecord
  belongs_to :owner
  has_many :volunteer_repairs, dependent: :delete_all
end
