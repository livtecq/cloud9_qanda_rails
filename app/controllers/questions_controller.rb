class QuestionsController < ApplicationController
  def index
    # すべての質問データの取得
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    # Questionモデルの新規インスタンスを作成後、@question変数に代入
    # new.html.erbのViewのform_withで使用する。
    @question = Question.new
  end
  
  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_path, notice: 'Success!'
    else
      flash[:alert] = 'Save error!'
      # ストロングパラメーター
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end
  
  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to root_path, notice: 'Success!'
    else
      flash[:alert] = 'Save error!'
      render :edit
    end
  end
  
  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to root_path, notice: 'Success!'
  end
  
  private
    def question_params
      # byebugを使用したデバッグ
    params.require(:question).permit(:name, :title, :content)
    end
  
end
