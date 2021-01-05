class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = if @question == ''
                'Please ask a question'
              elsif @question.end_with?('?')
                'Silly question, get dressed and go to work!'
              elsif @question.downcase == 'I am going to work'.downcase
                'Great!'
              else
                'I dont` care, get dressed and go to work!'
              end
  end
end
