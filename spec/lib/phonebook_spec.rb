require 'spec_helper'
require './lib/phonebook'
require './lib/contact'

describe Phonebook do
  let(:contact_1) { double('contact', name: 'first contact', phone_numbers: ['4444444','5555555']) }
  let(:contact_2) { double('contact', name: 'second contact', phone_numbers: '6666666') }
  let(:contacts) { [ contact_1, contact_2 ] }
  let(:phonebook) { Phonebook.new(contacts) }

  describe "#contacts" do
    it "returns assigend contacts" do
      expect(phonebook.contacts).to eq(contacts)
    end
  end

  describe "list_names" do
	it { expect(phonebook).to respond_to(:list_names) }
  	it "should return a list with contact names" do
		expect(phonebook.list_names).to eq([contact_1.name, contact_2.name])
  	end
  end

  describe "list_phone_numbers" do
	it { expect(phonebook).to respond_to(:list_phone_numbers) }
  	it "should return a list with contact phone numbers" do
		expect(phonebook.list_phone_numbers).to eq([contact_1.phone_numbers, contact_2.phone_numbers])
  	end
  end
end
