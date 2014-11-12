class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    concluir_cadastro_path
  end
end
