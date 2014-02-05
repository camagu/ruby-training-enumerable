require 'spec_helper'
require './lib/contact'

describe Contact do
  let(:contact) { Contact.new('John Doe', ["2157892", "7530006"]) }

  describe "#name" do
    it "returns assigned name" do
      expect(contact.name).to eq('John Doe')
    end
  end

  describe "#phone_numbers" do
    it "returns assigned phone numbers" do
      expect(contact.phone_numbers).to eq(["2157892", "7530006"])
    end
  end
end
