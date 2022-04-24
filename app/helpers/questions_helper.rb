module QuestionsHelper
  def question_header(question)
    action = question.persisted? ? 'Edit' : 'Create'
    "#{action} #{question.test.title.capitalize} Question"
  end
end
