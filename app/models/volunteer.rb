# frozen_string_literal: true

class Volunteer < ApplicationRecord
  belongs_to :user
  validates  :first_name, :last_name, :mobile_phone, :gender, :city, :state,
             :employer, :position, :availability, :skill, presence: true
  validate   :invalid_birthdate

  def invalid_birthdate
    if birthdate.present? && birthdate > Date.today
      errors.add(:birthdate, "can't be now or in future!")
    end
  end
end
