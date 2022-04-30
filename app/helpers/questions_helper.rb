module QuestionsHelper
  def question_header(question)
    action = question.persisted? ? t('helpers.submit.question.update') : t('helpers.submit.question.create')
    "#{action} #{question.test.title.capitalize}"
  end
end
