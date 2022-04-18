require 'rails_helper'

RSpec.describe Blog, type: :model do
  it "creates a record successfully" do
    expect { FactoryBot.create(:blog) }.to_not raise_exception
  end

  context "with no title" do
    it "should have an error on title" do
      blog = Blog.new
      blog.valid?
      expect(blog.errors.of_kind?(:title, :blank)).to eq(true)
    end
  end

  context "with title that's already taken" do

    let(:other_blog) { FactoryBot.create(:blog) }

    it "should have a uniqueness error on title" do

      blog = Blog.new(title: other_blog.title)
      blog.valid?
      puts blog.errors.inspect
      expect(blog.errors.of_kind?(:title, :taken)).to eq(true)
    end
  end
end
