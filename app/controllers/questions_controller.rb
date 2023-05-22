class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = ''

    if @question == 'working'
      @answer = 'Great!'
    elsif @question.ends_with?('?')
      @answer = 'Stupid question! Get to work'
    else
      @answer = 'I don\'t care! Get dressed and get to work'
    end
  end
end
