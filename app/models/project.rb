class Project < ApplicationRecord
  acts_as_commontable

  belongs_to :user
  has_many :targets, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
end
