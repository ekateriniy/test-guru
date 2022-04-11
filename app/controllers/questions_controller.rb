class QuestionsController < ApplicationController
  before_action :find_test, only: [:index, :new, :create]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    render plain: @test.questions.pluck(:body).join("\n")
  end

  def show
    @question = Question.find(params[:id])
    render plain: @question.body
  end

  def new
  end

  def create
    @question = @test.questions.new(question_params)

    if @question.save
      redirect_to @question
    else
      redirect_to new_test_question_path(@test)
    end
  end

  def destroy
    @question = Question.destroy(params[:id])
    redirect_to test_questions_path(@question.test_id)
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
