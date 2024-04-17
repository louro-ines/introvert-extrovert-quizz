class QuestionBlueprint < Blueprinter::Base
  identifier :id

  fields :body

  association :answers, blueprint: AnswerBlueprint do |question|
    question.answers
  end
end
