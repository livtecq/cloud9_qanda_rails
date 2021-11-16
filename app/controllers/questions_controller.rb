class QuestionsController < ApplicationController
  def index
    # すべての質問データの取得
    @questions = Question.all
  end

  def show
  end

  def new
    # Questionモデルの新規インスタンスを作成後、@question変数に代入
    # new.html.erbのViewのform_withで使用する。
    @question = Question.new
  end

  def edit
  end
end
