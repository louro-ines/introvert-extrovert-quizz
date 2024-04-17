class QuestionsController < ApplicationController
  def show
    question = Question.find(params[:id])
    render json: QuestionBlueprint.render(question, include: [:answers])
  end
end
