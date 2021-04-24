class SignUpController < ApplicationController
  def index
    session[:signup] = 0
  end
end
