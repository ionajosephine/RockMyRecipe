require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  it "creates a record successfully" do
    expect { FactoryBot.create(:ingredient) }.to_not raise_exception
  end
end
