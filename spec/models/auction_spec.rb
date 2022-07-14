require 'rails_helper'

RSpec.describe Auction, type: :model do

  let(:seller) { User.new(:email => 'test@example.com', :password => 'test') }

  subject { described_class.new }
  it "is valid with valid attributes" do
    subject.title = "title"
    subject.description = "description"
    subject.start_date = DateTime.now
    subject.end_date = DateTime.now + 1.days
    expect(subject).to be_valid
  end
  it "is not valid without a title" do
    subject.title = nil
    expect(subject).not_to be_valid
  end
  it "is not valid without a description" do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it "is not valid without a start date" do
    subject.start_date = nil
    expect(subject).not_to be_valid
  end
  it "is not valid without a end date" do
    subject.end_date = nil
    expect(subject).not_to be_valid
  end

  describe "Associations" do
    it { should belong_to(:user).without_validating_presence }
    it { should have_many(:bids)}
  end
end
