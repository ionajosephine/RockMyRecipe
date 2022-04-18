require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it "creates a record successfully" do
    expect { FactoryBot.create(:recipe) }.to_not raise_exception
  end

  context "with no title" do
    it "should have an error on title" do
      recipe = Recipe.new
      recipe.valid?
     # puts recipe.errors.inspect
      expect(recipe.errors.of_kind?(:title, :blank)).to eq(true)
    end
  end

  context "with no description" do
    it "should have an error on description" do
      recipe = Recipe.new
      recipe.valid?
     # puts recipe.errors.inspect
      expect(recipe.errors.of_kind?(:description, :blank)).to eq(true)
    end
  end

  context "with no contributor" do
    it "should have an error on contributor" do
      recipe = Recipe.new
      recipe.valid?
     # puts recipe.errors.inspect
      expect(recipe.errors.of_kind?(:contributor, :blank)).to eq(true)
    end
  end

  context "with no instructions" do
    it "should have an error on instructions" do
      recipe = Recipe.new
      recipe.valid?
     # puts recipe.errors.inspect
      expect(recipe.errors.of_kind?(:instructions, :blank)).to eq(true)
    end
  end

  context "with title that's already taken" do

    let(:other_recipe) { FactoryBot.create(:recipe) }

    it "should have a uniqueness error on title" do

      recipe = Recipe.new(title: other_recipe.title)
      recipe.valid?
      puts recipe.errors.inspect
      expect(recipe.errors.of_kind?(:title, :taken)).to eq(true)
    end
  end
end

