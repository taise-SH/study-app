class MyProblem < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :question, presence: true
  validates :answer, presence: true
end
