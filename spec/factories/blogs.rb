FactoryBot.define do
  factory :blog do
    sequence(:title) { |number| "Blog Title #{number}" }
    sequence(:body) { |number| "The body of blog #{number} 
        contains lorum ipsum Lorem ipsum dolor sit amet,
        consectetur adipiscing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua.
        Ut enim ad minim veniam, quis nostrud exercitation
        ullamco laboris nisi ut aliquip ex ea commodo consequat. 
        Duis aute irure dolor in reprehenderit in voluptate
        velit esse cillum dolore eu fugiat nulla pariatur.
        Excepteur sint occaecat cupidatat non proident,
        sunt in culpa qui officia deserunt
        mollit anim id est laborum." }
    contributor 
  end
end
