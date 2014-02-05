require 'spec_helper'
require './lib/phonebook'

describe Phonebook do
  let(:contacts)  { [double('first contact'), double('second contact')] }
  let(:phonebook) { Phonebook.new(contacts) }

  describe "#contacts" do
    it "returns assigend contacts" do
      expect(phonebook.contacts).to eq(contacts)
    end
  end
end
