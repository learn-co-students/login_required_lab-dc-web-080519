class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to '/welcome'
    else
      redirect_to new_session_path
    end
  end

  def welcome
    @current_user = current_user
  end

  def destroy
    if current_user
      session.delete(:name)
    end
  end
end
