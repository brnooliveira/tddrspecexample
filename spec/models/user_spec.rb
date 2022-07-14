require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new(password: 'test', email: 'test@example.com') }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
      
    end

    it "is not valid without a password" do
      subject.password = nil 
      expect(subject).not_to be_valid
    end

    it "is not valid without a email" do
      subject.email = nil 
      expect(subject).not_to be_valid
    end

  end

end
