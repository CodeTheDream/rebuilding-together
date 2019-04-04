class Repair < ApplicationRecord
  belongs_to :owner
  has_one :volunteer
end
