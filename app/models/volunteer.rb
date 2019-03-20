class Volunteer < ApplicationRecord
    belongs_to :volunteer_repair
    belongs_to :user
    has_many :repairs, through: :volunteer_repair
end
