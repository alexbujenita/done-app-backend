class Task < ApplicationRecord
  belongs_to :user

  validates :content, presence: true
  validates :end_date, presence: true
end
