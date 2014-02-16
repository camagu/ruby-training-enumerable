
  attr_reader :contacts

  def initialize(contacts)
    contacts = contacts
  end

  def contacts_names
    contacts.map(&:name)
  end

  def contacts_numbers
    contacts.map(&:phone_numbers)
  end

  def contacts_info
    data = Hash.new
    contacts.map do |contact|
      data << [contact.name, contact.phone_numbers]
    end
    data
  end

  def every_contact_has_number?
    contacts.all? { |contact| !contact.phone_numbers.nil?}
  end

  def contacts_with_no_number
    contacts.select { |contact| contact.phone_numbers.nil? }
  end
end
