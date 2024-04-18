class QuestionsBlueprint < Blueprinter::Base
  identifier :id

  fields :body

  association :answers, blueprint: AnswersBlueprint do |question|
    question.answers
  end
end
