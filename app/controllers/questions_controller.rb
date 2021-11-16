class QuestionsController < ApplicationController
  def index
    # すべての質問データの取得
    @questions = Question.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
