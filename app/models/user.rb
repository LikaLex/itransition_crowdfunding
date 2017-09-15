class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #, :omniauthable

  acts_as_commontator

  has_many :projects, dependent: :destroy

  enum theme: %i(darkly journal united solar simplex superhero cerulean)
  enum role: %i(admin user)
end


