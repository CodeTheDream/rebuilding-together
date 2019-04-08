# frozen_string_literal: true

class VolunteerRepair < ApplicationRecord
  belongs_to :volunteer
  belongs_to :repair
end
