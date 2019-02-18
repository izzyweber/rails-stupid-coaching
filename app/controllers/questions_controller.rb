class QuestionsController < ApplicationController
  def respond_to(question)
    if question.nil?
      'Try again'
    elsif question == 'I am going to work'
      'Great!'
    elsif question[-1] == '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def ask
  end

  def answer
    @question = params["question"]
    @answer = respond_to(@question)
  end
end
