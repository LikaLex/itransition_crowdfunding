class Project < ApplicationRecord
  acts_as_commontable

  belongs_to :user
  has_many :targets, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :funding_deadline, presence: true
  validate :deadline_in_future?

  def finished?
    self.funding_deadline <= Date.today
  end

  private
  def deadline_in_future?
    if self.finished?
      errors.add(:funding_deadline, 'is not in future')
    end
  end
end
