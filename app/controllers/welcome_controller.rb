class WelcomeController < ApplicationController
  def index
    @feedback = Feedback.new
  end

  def feedback
    @feedback = Feedback.new(permit_feedback_params)
    @feedback.save
  end

  private
  def permit_feedback_params
    params.require(:feedback).permit(:first_name, :last_name, :email, :subject, :body)
  end
end
