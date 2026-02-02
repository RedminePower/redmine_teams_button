# frozen_string_literal: true

class TeamsButtonController < ApplicationController
  before_action :require_login

  def user_email
    user = User.find(params[:id])
    render json: { email: user.mail }
  rescue ActiveRecord::RecordNotFound
    render json: { email: nil }
  end
end
