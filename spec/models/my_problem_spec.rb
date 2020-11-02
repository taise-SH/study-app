require 'rails_helper'

RSpec.describe MyProblem, type: :model do
  before do
    @my_problem = FactoryBot.build(:my_problem)
  end

  describe '問題の保存' do

    context "問題が保存できる場合" do
      it "画像、問題文、答えがあれば問題は保存される" do
        expect(@my_problem).to be_valid
      end

      it "問題文と答えのみあればツイートは保存される" do
        @my_problem.image = ""
        expect(@my_problem).to be_valid
      end
    end

    context "問題が保存できない場合" do
      it "問題文がないと問題は保存できない" do
        @my_problem.question = ""
        @my_problem.valid?
        expect(@my_problem.errors.full_messages).to include("Question can't be blank")
      end     

      it "答えがないと問題は保存できない" do
        @my_problem.answer = ""
        @my_problem.valid?
        expect(@my_problem.errors.full_messages).to include("Answer can't be blank")
      end

      it "ユーザーが紐付いていないと問題は保存できない" do
        @my_problem.user = nil
        @my_problem.valid?
        expect(@my_problem.errors.full_messages).to include("User must exist")
      end
    end

  end
end