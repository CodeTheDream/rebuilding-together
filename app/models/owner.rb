class Owner < ApplicationRecord
  before_save :upcase_fields
  belongs_to :user
  has_many   :repairs

  def upcase_fields
    state.upcase!
  end
  def full_name
    [first_name, middle_name, last_name].compact.join(' ')
  end

  def short_address
    [city, state].compact.join(', ') unless city.blank? && state.blank?
  end

end
