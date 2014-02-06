class Phonebook
  attr_reader :contacts

  def initialize(contacts)
    @contacts = contacts
  end

  def contact_names
  	contacts.map { |contact| contact.name }
  end

  def contact_phone_numbers
  	contacts.flat_map { |contact| contact.phone_numbers }
  end

  def contact_name_and_phone_numbers
  	contact_name_and_phone_numbers = {}
  	contacts.map do |contact|
	  	contact_name_and_phone_numbers[contact.name] = contact.phone_numbers
  	end
  	contact_name_and_phone_numbers
  end

  def complete_contacts?
    contacts.any? { |contact| !contact.phone_numbers.nil? && !contact.phone_numbers.empty? }
  end

  def incomplete_contacts
  	contacts.find_all { |contact| contact.phone_numbers.nil? || contact.phone_numbers.empty?  }
  end

end