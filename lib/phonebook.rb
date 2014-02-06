class Phonebook
  attr_reader :contacts

  def initialize(contacts)
    @contacts = contacts
  end

  def empty?(arg)
    arg.nil? || arg.empty?
  end

  def contact_names
    contacts.map(&:name)
  end

  def contact_phone_numbers
    contacts.flat_map(&:phone_numbers)
  end

  def contact_name_and_phone_numbers
    Hash[contacts.map { |contact| [contact.name, contact.phone_numbers] }]
  end

  def complete_contacts?
    contacts.all? { |contact| !empty?(contact.phone_numbers) }
  end

  def incomplete_contacts
    contacts.find_all { |contact| empty?(contact.phone_numbers)  }
  end
end