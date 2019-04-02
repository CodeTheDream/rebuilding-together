# frozen_string_literal: true

class Volunteer < ApplicationRecord
  belongs_to :user
  has_many :repairs, through: :volunteer_repair
end
