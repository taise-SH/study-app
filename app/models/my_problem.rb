class MyProblem < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :question, presence: true
  validates :answer, presence: true

  def self.search(search)
    if search != ""
      MyProblem.where('question LIKE(?)', "%#{search}%")
    else
      MyProblem.all
    end
  end
end
