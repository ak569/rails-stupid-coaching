class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = if @question[-1] == '?'
      'get to work'
    elsif @question.downcase == 'i am going to work'
      'great'
    else
      'I do not care'
    end
  end
end

