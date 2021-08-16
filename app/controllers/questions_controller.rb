class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answer = params[:question]
    @couch_answer = if @answer == 'i am going to work'
                      'Great!'
                    elsif @answer.include?('?')
                      'Silly question, get dressed and go to work!'
                    else
                      'I don\'t care, get dressed and go to work!'
                    end
  end
end
