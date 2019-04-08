# frozen_string_literal: true

class Owner < ApplicationRecord
  before_save :upcase_fields
  belongs_to :user
  has_many   :repairs
  validates  :first_name, :last_name, presence: true, length: { maximum: 25 }
  validates  :address, :city, :state, :zip, presence: true
  validates  :year, inclusion: { in: '1'..'30' }
  validates  :phone, :em_contact_name, :em_contact_phone, :em_contact_relationship, presence: true

  def upcase_fields
    state.upcase!
  end

  def full_name
    [first_name, middle_name, last_name].compact.join(' ')
  end

  def full_address
    partial_address = [address, city, state].compact.join(', ')
    [partial_address, zip].compact.join(' ')
  end

  def short_address
    [city, state].compact.join(', ') unless city.blank? && state.blank?
  end
end
