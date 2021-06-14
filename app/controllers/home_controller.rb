class HomeController < ApplicationController
  def index
    if consultation_signed_in?
    @consultation = Consultation.find(current_consultation.id)
  else
  end
end

def about
end
end
