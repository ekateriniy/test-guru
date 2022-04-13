module QuestionsHelper
  def question_header(question)
    if question.persisted?
      action = "Edit"
    else
      action = "Create"
    end
      "#{action} #{question.test.title.capitalize} Question"
  end
end
