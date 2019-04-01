module ApplicationHelper
  def language_options
    [['English', 'English'], ['Spanish', 'Spanish'],
      ['Chinese', 'Chinese'], ['Vietnamese', 'Vietnamese'], ['France', 'France']]
  end

  def em_contact_relationship_options
    [['Father', 'Father'], ['Mother', 'Mother'],
      ['Brother', 'Brother'], ['Sister', 'Sister'], ['Child', 'Child'], ['Friend', 'Friend'],
      ['Spouse', 'Spouse'], ['Partner', 'Partner'], ['Assistant', 'Assistant'], ['Manager', 'Manager']]
  end

  def howd_you_hear_options
    [['Our website', 'Our website'], ['Friend/Colleague', 'Friend/Colleague'],
    ['Mailed invitation', 'Mailed invitation'], ['Emailed invitation', 'Emailed invitation'],
    ['Radio', 'Radio'], ['Television', 'Television'], ['Internet search', 'Internet search'],['Other', 'Other']]
  end

end
