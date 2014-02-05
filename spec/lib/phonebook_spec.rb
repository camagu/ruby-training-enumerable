require 'spec_helper'
require './lib/phonebook'
require './lib/contact'

describe Phonebook do
  let(:c1) { double('contact', name: 'first contact', phone_numbers: ['4444444','5555555']) }
  let(:c2) { double('contact', name: 'second contact', phone_numbers: '6666666') }
  let(:contacts) { [ c1, c2 ] }
  let(:phonebook) { Phonebook.new(contacts) }

  describe "#contacts" do
    it "returns assigend contacts" do
      expect(phonebook.contacts).to eq(contacts)
    end
  end

  describe "list_names" do
	it { expect(phonebook).to respond_to(:list_names) }
  	it "should return a list with contact names" do
		expect(phonebook.list_names).to eq([c1.name, c2.name])
  	end
  end

  describe "list_phone_numbers" do
	it { expect(phonebook).to respond_to(:list_phone_numbers) }
  	it "should return a list with contact phone numbers" do
		expect(phonebook.list_phone_numbers).to eq([c1.phone_numbers, c2.phone_numbers])
  	end
  end  

  describe "list_complete_contacts" do
	it { expect(phonebook).to respond_to(:list_complete_contacts) }
  	it "should return a list with contact phone numbers" do
		expect(phonebook.list_complete_contacts).to eq({c1.name => c1.phone_numbers, c2.name => c2.phone_numbers})
  	end
  end

  describe "complete_contacts?" do
	it { expect(phonebook).to respond_to(:complete_contacts?) }
  	it "should return a list with contact phone numbers" do
		expect(phonebook.complete_contacts?).to be(true)
  	end
  end

  describe "incomplete_contacts" do
  	let(:c3) { double('contact', name: 'third contact', phone_numbers:'') }
  	before { contacts.push(c3) }
	it { expect(phonebook).to respond_to(:incomplete_contacts) }
  	it "should return a list with contact phone numbers" do
		expect(phonebook.incomplete_contacts).to eq(['third contact'])
  	end
  end
end
