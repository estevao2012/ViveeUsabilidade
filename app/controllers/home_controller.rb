class HomeController < ApplicationController

  def index
    @minhas_consultas = current_usuario.consultas.where("data > ?",DateTime.now).limit(10).order(data: :asc)
    @meus_medicos = current_usuario.medicos
  end

  def concluir_cadastro


  end

  def salva_dados_usuario
    respond_to do |format|
      if current_usuario.update(user_params)
        format.html { redirect_to "/", notice: 'Dados atualizados com sucesso.' } 
      else
        format.html { redirect_to :back } 
      end
    end
  end

  def seguir 
  end 

  def desseguir
  end

  private

  def user_params
    params.require(:usuario).permit(:nome, :email, :password, :salt, :encrypted_password, :idade, :cpf, :sexo, :rua, :numero, :bairro, :complemento, :cidade, :estado)
  end
end
