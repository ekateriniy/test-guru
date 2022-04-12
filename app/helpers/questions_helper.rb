module QuestionsHelper
  def question_header(action, test)
    "#{action.capitalize} #{test.title.capitalize} Question"
  end
end
