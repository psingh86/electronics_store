class LoginController < ApplicationController
  def index
    session[:login] = 0


    if session[:signup] == 0
      if params[:password].blank? || params[:first_name].blank? || params[:last_name].blank? || params[:address].blank? || params[:province].blank?
        redirect_to(sign_up_path, alert: 'Empty field!') and return
      else
        session[:signup] = 1
        User.create(first_name: params[:first_name], last_name: params[:last_name], password: params[:password], address:params[:address], Province_id: params[:province])
        redirect_to(login_path, alert: 'Invalid User!') and return
      end
    end
  end
end
