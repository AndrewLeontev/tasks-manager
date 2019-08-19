# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  def new
  end

  # POST /resource/sign_in
  def create

    resource = User.find_for_database_authentication(email: params[:user][:email])

    unless resource
      error_messages = t('devise.failure.invalid')
      return respond_to do |format|
        format.js { render 'devise/sessions/create', locals: { error_messages: error_messages }}
      end
    end

    if resource.valid_password?(params[:user][:password])
      sign_in :user, resource
      return redirect_to edit_user_registration_path
    end

    error_messages = t('devise.failure.invalid')
    respond_to do |format|
      format.js { render  'devise/sessions/create', locals: { error_messages: error_messages }}
    end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end
end
