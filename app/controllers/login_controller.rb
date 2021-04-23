class LoginController < ApplicationController
  def index
    session[:login] = 0
  end
end
