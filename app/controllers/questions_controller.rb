class QuestionsController < ApplicationController
  # обратный вызов при поиске теста в контроллере ресурса вопросов
  before_action :find_test

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    @questions = Question.where(test: params[:test_id]).pluck(:body)
    render plain: @questions.join("\n")
  end

  def show
    @question = Question.find(params[:id])
    render plain: @question.body
  end

  def new
    @test = Test.find(params[:test_id])
  end

  def create
    @question = @test.questions.new(question_params)

    if @question.save
      redirect_to test_questions_path
    else
      redirect_to new_test_question_path
    end
  end

  def destroy
    @question = Question.destroy(params[:id])
    redirect_to test_questions_path
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def question_params
    params.require(:question).permit(:body)
  end

  def rescue_with_question_not_found
    render plain: 'Question was not found'
  end
end
