class QuestionsController < ApplicationController
  def index
    questions = Question.all
    render json: QuestionsBlueprint.render(questions, include: [:answers])
  end

  def compute_score
    answers = params[:answers]
    total_score = answers.sum { |answer| answer[:score].to_i }
    result = total_score > ((Question.all.count * 4) / 2) ? 'extrovert' : 'introvert'
    render json: { result: }
  end
end
