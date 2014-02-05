class Contact
  attr_reader :name, :phone_numbers

  def initialize(name, phone_numbers)
    @name          = name
    @phone_numbers = phone_numbers
  end
end
