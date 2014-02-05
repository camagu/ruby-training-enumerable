class Phonebook
  attr_reader :contacts

  def initialize(contacts)
    @contacts = contacts
  end

  def list_names
  	# As a client I want a list of the phone book contacts' names so I can display them to the user
  	list_names = []
  	@contacts.each do |c|
  		list_names.push(c.name)
  	end
  	list_names
  end

  def list_phone_numbers
  	# As a client I want a list of the phone book contacts' phone numbers so I can display them to the user
  	list_phone_numbers = []
  	@contacts.each do |c|
  		list_phone_numbers.push(c.phone_numbers)
  	end
  	list_phone_numbers
  end

end
