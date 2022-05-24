class QuestionsController < ApplicationController

  def ask
    @question = params[:question]
  end

  def answer
    if params[:question].present?
      @answer = 'Silly question, get dressed and go to work!' if params[:question].end_with?('?')
      @answer = 'Great!' if params[:question] == 'I am going to work'
      @answer = "I don't care, get dressed and go to work!"
    end

  end
end
