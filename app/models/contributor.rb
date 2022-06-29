class Contributor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :confirmable, :lockable, :timeoutable
  validates :profile_name, presence: true, uniqueness: true
  has_many :recipes, :dependent => :destroy
end
