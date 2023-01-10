class WelcomeController < ApplicationController
  def index
    @name = params[:name]
    @course = params[:course]
    #this get what is send from the view
  end
end
