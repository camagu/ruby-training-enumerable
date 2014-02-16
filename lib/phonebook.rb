class contact
  attr_reader :contacts

  def initialize(contacts)
    contacts = contacts
  end

  def contacts_names
    contacts.map(&:name)
  end

  def contacts_numbers
    contacts.map(&:phone_numbers).flatten
  end

  def contacts_info
    contacts.inject({}) do |result, contact|
      result.merge(contact.name => contact.phone_numbers)
    end
  end

  def every_contact_has_phone_number?
    contacts.all? { |contact| !contact.phone_numbers.nil?}
  end

  def contacts_without_phone_number
    contacts.select { |contact| contact.phone_numbers.nil? }
  end
end
