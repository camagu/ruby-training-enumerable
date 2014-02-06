require 'spec_helper'
require './lib/phonebook'

describe Phonebook do
  let(:contact1)    { double('contact 1',   name: 'first contact',        phone_numbers: ['0000000', '1111111'] ) }
  let(:contact2)    { double('contact 2',   name: 'second contact',       phone_numbers: ['2222222'] ) }
  let(:incomplete)  { double('incomplete',  name: 'incomplete contact',   phone_numbers: [] ) }
  let(:contacts)    { [contact1, contact2] }
  let(:phonebook)   { Phonebook.new(contacts) }

  describe "methods" do
    subject{ phonebook }
  	it { should respond_to(:contact_names) }
  	it { should respond_to(:contact_phone_numbers) }
  	it { should respond_to(:contact_name_and_phone_numbers) }
  	it { should respond_to(:complete_contacts?) }
  	it { should respond_to(:incomplete_contacts) }    
  end


  describe "#contacts" do
    it "returns assigend contacts" do
      expect(phonebook.contacts).to eq(contacts)
    end
  end

  describe "contact_names" do
    it "returns a list with contact names" do
      expect(phonebook.contact_names).to eq([contact1.name, contact2.name])
    end
  end

  describe "contact_phone_numbers" do
    it "returns a list with all contact's phone numbers" do
      expect(phonebook.contact_phone_numbers).to eq([contact1.phone_numbers[0], contact1.phone_numbers[1], contact2.phone_numbers[0]])
    end
  end  

  describe "contact_name_and_phone_numbers" do
    it "returns a dictionary with contact names and phone numbers" do
      expect(phonebook.contact_name_and_phone_numbers).to eq({contact1.name => contact1.phone_numbers, contact2.name => contact2.phone_numbers})
    end
  end

  describe "complete_contacts?" do
    describe "with complete contacts" do
      it "returns true" do
        expect(phonebook.complete_contacts?).to be_true
      end      
    end

    describe "with incomplete contacts" do
      let(:contacts) { [contact1, contact2, incomplete] }
      let(:phonebook) { Phonebook.new(contacts) }
      it "returns false" do
        expect(phonebook.complete_contacts?).to be_false
      end
    end
  end

  describe "incomplete_contacts" do
    describe "with complete contacts" do
      it "returns an empty list " do
        expect(phonebook.incomplete_contacts).to eq([])
      end
    end

    describe "with incomplete contacts" do
      let(:contacts) { [contact1,contact2,incomplete] }
      let(:phonebook) { Phonebook.new(contacts) }
      it "returns a list " do
        expect(phonebook.incomplete_contacts).to eq([incomplete])
      end
    end

  end
end
