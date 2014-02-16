require 'spec_helper'
require './lib/phonebook'
require './lib/contact'

describe Phonebook do
  let(:contact1)  { double('first contact', name: 'first name', phone_numbers: ['3217889909', '6733']) }
  let(:contact2)  { double('second contact', name: 'second name', phone_numbers: ['32456563']) }
  let(:contacts)  { [contact1, contact2] }
  let(:phonebook) { Phonebook.new(contacts) }

  describe "#contacts" do
    it "returns assigend contacts" do
      expect(phonebook.contacts).to eq(contacts)
    end
  end

  describe "#contact_names" do
    it "returns list of names" do
      expect(phonebook.contacts_names).to eq([contact1.name, contact2.name])
    end
  end

  describe "#contact_phone_numbers" do
    it "returns list of contact's numbers" do
      expect(phonebook.contacts_numbers).to eq([contact1.phone_numbers, contact2.phone_numbers])
    end
  end

  describe "#every_contact_has_number" do
    it "returns that every contact has numbers" do
      expect(phonebook.every_contact_has_number?).to be_true
    end
  end
end
