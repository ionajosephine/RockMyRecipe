require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it "creates a record successfully" do
    expect { FactoryBot.create(:recipe) }.to_not raise_exception
  end
end

RSpec.describe Recipe, type: :model do
  context "with no title" do
    it "should have an error on title" do
      recipe = Recipe.new
      recipe.valid?
      puts recipe.errors.inspect
      expect(recipe.errors.of_kind?(:title, :blank)).to eq(true)
      expect { FactoryBot.create(:recipe) }.to_not raise_exception
    end
  end
end

