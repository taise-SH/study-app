class English < ApplicationRecord
  belongs_to :user

  validates :question, presence: true
  validates :answer, presence: true
end
