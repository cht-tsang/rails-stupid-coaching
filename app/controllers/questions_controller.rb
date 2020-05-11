class QuestionsController < ApplicationController

  def ask
  end

  def answer
    message = params[:answer]

    def coach_answer(message)
      if message.downcase == "i am going to work"
        "Great!"
      elsif message.end_with?("?")
        "Silly question, get dressed and go to work!"
      else
        "I don't care, get dressed and go to work!"
      end
    end

    def coach_answer_enhanced(message)
      answer = coach_answer(message)
      if answer != ""
        if message.upcase == message
          "I can feel your motivation! #{answer}"
        else
          answer
        end
      else
        ""
      end
    end
    
    @answer = coach_answer_enhanced(message)

  end
end
