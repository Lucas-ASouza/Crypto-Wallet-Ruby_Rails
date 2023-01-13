class WelcomeController < ApplicationController
  def index
    cookies[:course] = "Ruby practicing, hello I'm a [COOKIE]"
    session[:course] = "Ruby practicing, hello I'm a [SESSION]"
    @name = params[:name]
    @course = params[:course]
    #this get what is send from the view
  end
end
