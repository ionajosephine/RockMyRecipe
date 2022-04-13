require 'rails_helper'

RSpec.describe Contributor, type: :model do
  it "creates a record successfully" do
    expect { FactoryBot.create(:contributor) }.to_not raise_exception
  end

  context "with no profile name" do
    it "should have a presence error on profile_name" do
      contributor = Contributor.new(email: "test_contributor@example.com", password: "password")
      contributor.valid?
      puts contributor.errors.inspect
      expect(contributor.errors.of_kind?(:profile_name, :blank)).to eq(true)
    end
  end

  context "with profile name that's already taken" do

    let(:other_contributor) { FactoryBot.create(:contributor) }

    it "should have a uniqueness error on profile_name" do

      contributor = Contributor.new(email: "test_contributor@example.com", password: "password", profile_name: other_contributor.profile_name)
      contributor.valid?
      puts contributor.errors.inspect
      expect(contributor.errors.of_kind?(:profile_name, :taken)).to eq(true)
    end
  end
end

